//
//  LoginViewController.swift
//  ASSIGNMENT 2 MULTIPLE NAVIGATOR
//
//  Created by Canadore college on 2019-04-02.
//  Copyright © 2019 Canadore college. All rights reserved.
//

import Foundation
import UIKit

class LoginViewController: UIViewController {
    @IBOutlet weak var userNameField: UITextField!
    
    @IBOutlet weak var passwordField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func loginTapped(_ sender: Any) {
        
        //navigateToMainInterface()
        
    }
    
    private func navigateToMainInterface(){
        
        let mainStoryboard = UIStoryboard (name: "Main", bundle: Bundle.main)
        
        guard let mainNavigationVC = mainStoryboard.instantiateViewController(withIdentifier: "MainNavigationController") as?
            MainNavigationController else{
                return
        }
        
        print(mainNavigationVC.topViewController)
        print(mainNavigationVC.viewControllers)
        
        if let mainVc = mainNavigationVC.topViewController as? ViewController {
            mainVc.userName = userNameField.text
            mainVc.passWord = passwordField.text
        }
        
        present(mainNavigationVC,animated: true, completion: nil)
    }
    
}
