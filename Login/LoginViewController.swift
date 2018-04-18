//
//  ViewController.swift
//  Login
//
//  Created by Eder Padilla on 17/04/18.
//  Copyright © 2018 Eder Padilla. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    var loginView : LoginView!
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setUpView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.isHidden = true
    }
    func setUpView(){
        let mainView = LoginView(frame: self.view.frame)
        self.loginView = mainView
        self.view.addSubview(loginView)
        self.loginView.loginAction = loginPressed
        self.loginView.signUpAction = sigUpPressed
        loginView.setAnchor(top: view.topAnchor, left: view.leftAnchor, right: view.rightAnchor, bottom: view.bottomAnchor, paddingTop: 0, paddingLeft: 0, paddingRight: 0, paddingBottom: 0)
    }
    func loginPressed(){
        print("👹 login button pressed")
    }
    func sigUpPressed(){
        print("👹 signup button pressed")
    }
    
}

