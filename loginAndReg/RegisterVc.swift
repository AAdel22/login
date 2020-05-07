//
//  ViewController.swift
//  loginAndReg
//
//  Created by Alaa Adel on 5/7/20.
//  Copyright © 2020 Alaa Adel. All rights reserved.
//

import UIKit

class RegisterVc: UIViewController {
    @IBOutlet weak var firstNameTxtfield: UITextField!
    @IBOutlet weak var lastNameTxtField: UITextField!
    @IBOutlet weak var emailTxtfield: UITextField!
    @IBOutlet weak var passwordTxtField: UITextField!
    @IBOutlet weak var confirmPasswordTxtfield: UITextField!
    @IBOutlet weak var createBtn: UIButton!
    @IBOutlet weak var registerView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func createBtn(_ sender: Any) {
        let email = emailTxtfield.text
        let password = passwordTxtField.text
        let confirmpassword = confirmPasswordTxtfield.text
        guard password?.isEmpty != true else {
            print("password is succes")
            return
        }
        guard email?.isEmpty != true else  {
           print("email is succes")
            return
            
        }
        guard confirmpassword == password else {
            print("valid")
            return
        }
        UserDefaults.standard.set(email, forKey: "email")
        UserDefaults.standard.set(password, forKey: "password")
        UserDefaults.standard.synchronize()
        
    }
    

}

