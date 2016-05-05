//
//  ViewController.swift
//  ui-demo
//
//  Created by Baowen on 2016-05-05.
//  Copyright © 2016 Senseable Studio. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var accountTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        accountTextField.delegate = self
        passwordTextField.delegate = self
        
        accountTextField.returnKeyType = .Next
        passwordTextField.returnKeyType = .Default
        
        accountTextField.placeholder = "Enter Account"
        passwordTextField.placeholder = "Enter Password"
        passwordTextField.secureTextEntry = true
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func textFieldShouldReturn(textField: UITextField) -> Bool {
        switch textField {
            
        case accountTextField:
            passwordTextField.becomeFirstResponder()
            print("跳到密碼欄")
            break
        case passwordTextField:
            passwordTextField.resignFirstResponder()
//            self.view.endEditing(true)
            print("收鍵盤")
            break
        default:
            break
        }

        return false
    }

}

