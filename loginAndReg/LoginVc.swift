//
//  LoginVc.swift
//  loginAndReg
//
//  Created by Alaa Adel on 5/7/20.
//  Copyright © 2020 Alaa Adel. All rights reserved.
//

import UIKit

class LoginVc: UIViewController {
    @IBOutlet weak var emailTxtfield: UITextField!
    @IBOutlet weak var passwordTxtfield: UITextField!
    @IBOutlet weak var loginView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func loginBtn(_ sender: Any) {
        let email = emailTxtfield.text
        let password = passwordTxtfield.text
        
        let emailstored = UserDefaults.standard.string(forKey: "email")
        let passstored = UserDefaults.standard.string(forKey: "password")
        
        if emailstored == email {
            if  passstored == password {
                let homevc = storyboard?.instantiateViewController(withIdentifier: "homevc") as! Homevc
                present(homevc, animated: true, completion: nil)
            }
            
        }
        
    }
    

   

}
