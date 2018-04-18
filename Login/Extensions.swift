//
//  Extensions.swift
//  Login
//
//  Created by Eder Padilla on 17/04/18.
//  Copyright © 2018 Eder Padilla. All rights reserved.
//
import UIKit
extension UITextField{
    func setLeftPaddingPoints(_ space: CGFloat) {
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: space, height: self.frame.size.height))
        self.leftView = paddingView
        self.leftViewMode = .always
    }
}

extension UIView{
    
    func setCellShadow(){
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOffset = CGSize(width: 0, height: 1)
        self.layer.shadowOpacity = 1
        self.layer.shadowRadius = 1.0
        self.layer.masksToBounds = false
        self.clipsToBounds = false
        self.layer.cornerRadius = 3
    }
    func setAnchor(width: CGFloat, height: CGFloat) {
        self.setAnchor(top: nil,
                       left: nil,
                       right: nil, bottom: nil,
                       paddingTop: 0,
                       paddingLeft: 0,
                       paddingRight: 0, paddingBottom: 0,
                       width: width,
                       height: height)
    }
    func printToEdge(view : UIView){
        self.topAnchor.constraint(equalTo : view.topAnchor).isActive = true
        self.bottomAnchor.constraint(equalTo : view.bottomAnchor).isActive = true
        self.leftAnchor.constraint(equalTo : view.leftAnchor).isActive = true
        self.rightAnchor.constraint(equalTo : view.rightAnchor).isActive = true
    }
    func setAnchor(top : NSLayoutYAxisAnchor?,left : NSLayoutXAxisAnchor?,
                   right :NSLayoutXAxisAnchor?, bottom : NSLayoutYAxisAnchor?,
                   paddingTop : CGFloat , paddingLeft : CGFloat , paddingRight : CGFloat,
                   paddingBottom : CGFloat, width : CGFloat = 0, height : CGFloat = 0){
        self.translatesAutoresizingMaskIntoConstraints = false
        if let top = top {
            self.topAnchor.constraint(equalTo: top, constant: paddingTop).isActive = true
        }
        if let left = left {
            self.leftAnchor.constraint(equalTo: left, constant: paddingLeft).isActive = true
        }
        if let right = right {
            self.rightAnchor.constraint(equalTo: right, constant: paddingRight).isActive = true
        }
        if let bottom = bottom {
            self.bottomAnchor.constraint(equalTo: bottom, constant: paddingBottom).isActive = true
        }
        if width != 0 {
            self.widthAnchor.constraint(equalToConstant : width).isActive = true
        }
        if height != 0 {
            self.heightAnchor.constraint(equalToConstant : height).isActive = true
        }
    }
    var safeTopAnchor : NSLayoutYAxisAnchor {
        if #available(iOS 11.0, *) {
            return safeAreaLayoutGuide.topAnchor
        }
        return topAnchor
    }
    var safeBottomAnchor : NSLayoutYAxisAnchor {
        if #available(iOS 11.0, *) {
            return safeAreaLayoutGuide.bottomAnchor
        }
        return bottomAnchor
    }
    var safeLeftAnchor : NSLayoutXAxisAnchor {
        if #available(iOS 11.0, *) {
            return safeAreaLayoutGuide.leftAnchor
        }
        return leftAnchor
    }
    var safeRightAnchor : NSLayoutXAxisAnchor {
        if #available(iOS 11.0, *) {
            return safeAreaLayoutGuide.rightAnchor
        }
        return rightAnchor
    }
}
public extension UIColor {
    public convenience init(r : CGFloat, g : CGFloat, b : CGFloat) {
        self.init(red : r/255, green : g/255, blue : b/255,alpha : 1)
    }
    
    static var customLightBlueColor : UIColor = {
        return UIColor( r:44 ,g : 57 , b :57)
    }()
    static var customRedColor : UIColor = {
        return UIColor( r:217 ,g : 48 , b :80)
    }()
    static var customDarkBlueColor : UIColor = {
        return UIColor(r: 11, g: 22, b: 53)
    }()
}

