//
//  ProfileViewController.swift
//  Meals.lk
//
//  Created by Bhanuka Gamage on 2/16/20.
//  Copyright © 2020 Mealslk. All rights reserved.
//

import Foundation
import UIKit

class ProfileViewController : UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func logoutButtonPressed(_ sender: UIButton) {
        
//        let loginNavigationController = storyboard?.instantiateViewController(identifier: "LoginNavigationController") as! LoginNavigationController
//        let mainTabController = storyboard?.instantiateViewController(identifier: "MainTabController") as! MainTabController
        
//        let loginViewController = storyboard?.instantiateViewController(identifier: "LoginViewController") as! LoginViewController
        
//        loginViewController.modalPresentationStyle = .fullScreen
        
//        self.navigationController?.popToRootViewController(animated: true)
//        mainTabController.dismiss(animated: true, completion: nil)
//        self.view.window?.rootViewController?.dismiss(animated: true, completion: nil)
        
//        loginNavigationController.popToRootViewController(animated: true)
        
//        show(loginViewController, sender: nil)
        
//        loginNavigationController.popToViewController(loginViewController, animated: true)
        
        navigationController?.popToRootViewController(animated: true)
        
    }
    
}
