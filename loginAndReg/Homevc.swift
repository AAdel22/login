//
//  Homevc.swift
//  loginAndReg
//
//  Created by Alaa Adel on 5/7/20.
//  Copyright © 2020 Alaa Adel. All rights reserved.
//

import UIKit
import SideMenu

class Homevc: UIViewController {

    var menu:UISideMenuNavigationController?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let menuvc = storyboard?.instantiateViewController(withIdentifier: "menuvc") as! menuvc
        menu = UISideMenuNavigationController(rootViewController: menuvc)
        SideMenuManager.default.menuLeftNavigationController = menu
        menu?.setNavigationBarHidden(true, animated: false)
        SideMenuManager.default.menuAddPanGestureToPresent(toView: self.view)        // Do any additional setup after loading the view.
    }
    @IBAction func menu(_ sender: Any) {
        present(menu!, animated: true, completion: nil)
    }
}
