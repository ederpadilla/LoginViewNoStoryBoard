//
//  LoginView.swift
//  Login
//
//  Created by Eder Padilla on 17/04/18.
//  Copyright © 2018 Eder Padilla. All rights reserved.
//

import UIKit
class LoginView : UIView{
    var loginAction : (() -> Void)?
    var signUpAction : (() -> Void)?
    let backGroungImageView : UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "Bitmap")
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    let emailTextfiel : UITextField = {
        let emailTextFiel = UITextField()
        emailTextFiel.borderStyle = .none
        emailTextFiel.layer.cornerRadius = 8
        emailTextFiel.backgroundColor = UIColor(red: 216/255, green: 216/255, blue: 126/255, alpha: 0.2)
        emailTextFiel.textColor = UIColor(white: 0.9, alpha: 0.8)
        emailTextFiel.font = UIFont.systemFont(ofSize: 17)
        emailTextFiel.setLeftPaddingPoints(20)
        emailTextFiel.autocorrectionType = .no
        emailTextFiel.keyboardType = UIKeyboardType.emailAddress
        //placeholder
        var placeHolder = NSMutableAttributedString()
        placeHolder = NSMutableAttributedString(attributedString: NSMutableAttributedString(string: "Email", attributes: [NSAttributedStringKey.font: UIFont.systemFont(ofSize: 18), .foregroundColor : UIColor(white: 1, alpha: 0.7)]))
        emailTextFiel.attributedPlaceholder = placeHolder
        emailTextFiel.setAnchor(width: 0, height: 40)
        return emailTextFiel
    }()
    let passwordTextfiel : UITextField = {
        let passwordTextfiel = UITextField()
        passwordTextfiel.borderStyle = .none
        passwordTextfiel.layer.cornerRadius = 8
        passwordTextfiel.backgroundColor = UIColor(red: 216/255, green: 216/255, blue: 126/255, alpha: 0.2)
        passwordTextfiel.textColor = UIColor(white: 0.9, alpha: 0.8)
        passwordTextfiel.font = UIFont.systemFont(ofSize: 17)
        passwordTextfiel.setLeftPaddingPoints(20)
        passwordTextfiel.autocorrectionType = .no
        passwordTextfiel.isSecureTextEntry = true
        //placeholder
        var placeHolder = NSMutableAttributedString()
        placeHolder = NSMutableAttributedString(attributedString: NSMutableAttributedString(string: "Password", attributes: [NSAttributedStringKey.font: UIFont.systemFont(ofSize: 18), .foregroundColor : UIColor(white: 1, alpha: 0.7)]))
        passwordTextfiel.attributedPlaceholder = placeHolder
        passwordTextfiel.setAnchor(width: 0, height: 40)
        return passwordTextfiel
    }()
    let logInButton : UIButton = {
        let loginButton = UIButton()
        let attributedString = NSMutableAttributedString(attributedString: NSAttributedString(string: "Login", attributes: [NSAttributedStringKey.font : UIFont.systemFont(ofSize: 18), .foregroundColor : UIColor.white]))
        loginButton.setAttributedTitle(attributedString, for: .normal)
        loginButton.layer.cornerRadius = 8
        loginButton.layer.borderWidth = 1
        loginButton.layer.borderColor = UIColor(red: 80/255, green: 227/255, blue: 194/255, alpha: 1).cgColor
        loginButton.addTarget(self, action: #selector(handleLogIn), for: .touchUpInside)
        loginButton.setAnchor(width: 0, height: 50)
        return loginButton
    }()
    let signUpButton : UIButton = {
        let signUpButton = UIButton()
        let attributedString = NSMutableAttributedString(attributedString: NSAttributedString(string: "Sign Up", attributes: [NSAttributedStringKey.font : UIFont.systemFont(ofSize: 18), .foregroundColor : UIColor.white]))
        signUpButton.setAttributedTitle(attributedString, for: .normal)
        signUpButton.layer.cornerRadius = 8
        signUpButton.layer.borderWidth = 1
        signUpButton.layer.borderColor = UIColor(red: 255/255, green: 151/255, blue: 164/255, alpha: 1).cgColor
        signUpButton.setAnchor(width: 0, height: 50)
        signUpButton.addTarget(self, action: #selector(handleSignUp), for: .touchUpInside)
        return signUpButton
    }()
    
    func mainStackView() -> UIStackView {
        let stackView = UIStackView(arrangedSubviews: [emailTextfiel,passwordTextfiel,
                                    logInButton,signUpButton])
        stackView.axis = .vertical
        stackView.distribution = .fillProportionally
        stackView.spacing = 10
        return stackView
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUp()
    }
    
    func setUp(){
        let stackView = mainStackView()
        addSubview(backGroungImageView)
        addSubview(stackView)
        backGroungImageView.setAnchor(top: self.topAnchor, left: self.leftAnchor, right: self.rightAnchor, bottom: self.bottomAnchor, paddingTop: 0, paddingLeft: 0, paddingRight: 0, paddingBottom: 0)
        stackView.setAnchor(width: self.frame.width - 60, height: 210)
        stackView.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        stackView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
    }
    
    @objc func handleLogIn(){
        loginAction?()
    }
    @objc func handleSignUp(){
        signUpAction?()
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
