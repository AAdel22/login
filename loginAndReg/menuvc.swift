//
//  menuvc.swift
//  loginAndReg
//
//  Created by Alaa Adel on 5/7/20.
//  Copyright © 2020 Alaa Adel. All rights reserved.
//

import UIKit

class menuvc: UIViewController {

    @IBOutlet weak var tableview: UITableView!
    var data = ["aaaaaaaa","bbbbbbbb","cccccccc"]
    override func viewDidLoad() {
        super.viewDidLoad()

        tableview.delegate = self
        tableview.dataSource = self
    }

    @IBAction func logoutbtn(_ sender: Any) {
        let login = storyboard?.instantiateViewController(withIdentifier: "loginvc") as! LoginVc
        present(login, animated: true, completion: nil)
        
    }
}
extension menuvc: UITableViewDelegate , UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableview.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        cell.labletableview.text = data[indexPath.row]
        return cell
    }
    
    
    
}
