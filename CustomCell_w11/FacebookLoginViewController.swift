//
//  FacebookLoginViewController.swift
//  CustomCell_w11
//
//  Created by admin on 18/06/2020.
//  Copyright © 2020 admin. All rights reserved.
//

import UIKit
import FBSDKLoginKit

class FacebookLoginViewController: UIViewController, LoginButtonDelegate {
    
    @IBOutlet weak var goToListButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //initial state
        goToListButton.isHidden = true

        // Add fb login button
        let loginButton = FBLoginButton()
        loginButton.center = view.center
        view.addSubview(loginButton)
        loginButton.delegate = self //assign delegate
        
        //checks if user is already logged in when app is opened.
        if let token = AccessToken.current,
              !token.isExpired {
            goToListButton.isHidden = false
          }
    }
    
    //What to do when logged in
    func loginButton(_ loginButton: FBLoginButton, didCompleteWith result: LoginManagerLoginResult?, error: Error?) {
        goToListButton.isHidden = false
    }
    
    //What to do when logged out
    func loginButtonDidLogOut(_ loginButton: FBLoginButton) {
        goToListButton.isHidden = true
    }
    
    

}
