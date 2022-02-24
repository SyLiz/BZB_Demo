//
//  LoginViewController.swift
//  bzb_demo
//
//  Created by BOICOMP21070027 on 23/2/2565 BE.
//

import UIKit
import DTGradientButton

class LoginViewController: UIViewController {

    @IBOutlet weak var registerButton: UIButton!
    @IBOutlet weak var loginDeviceButton: UIButton!
    @IBOutlet weak var appleButton: UIButton!
    @IBOutlet weak var facebookButton: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var userNameField: UITextField!
    @IBOutlet weak var fieldBackground: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
        
        fieldBackground.clipsToBounds = true
        fieldBackground.layer.cornerRadius = 48
        fieldBackground.layer.maskedCorners = [ .layerMinXMinYCorner] // Top left corner
        
        userNameField.text = ""
        passwordField.text = ""
        
        userNameField.layer.cornerRadius = 8
        userNameField.layer.borderWidth = 1
        userNameField.layer.borderColor = UIColor.textFieldCorner.cgColor
        
        passwordField.layer.cornerRadius = 8
        passwordField.layer.borderWidth = 1
        passwordField.layer.borderColor = UIColor.textFieldCorner.cgColor
        
        let colors:[UIColor] = [ UIColor(named: "Login btn Bottom")! , UIColor(named: "Login btn Top")!]
        loginButton.setGradientBackgroundColors(  colors , direction: .toBottom, for: .normal)
        loginButton.layer.cornerRadius = 8
        
        
        let iconFacebook = UIImage(named: "facebook_Icon")!
        facebookButton.setImage(iconFacebook, for: .normal)
        facebookButton.imageView?.contentMode = .scaleAspectFit
        facebookButton.imageEdgeInsets = UIEdgeInsets(top: 0, left: -20, bottom: 0, right: 0)
        
        facebookButton.layer.cornerRadius = 8
        facebookButton.setGradientBackgroundColors(  [.darkSkyBlue] , direction: .toBottom, for: .normal)
        
        
        let iconApple = UIImage(named: "apple_icon")!
        appleButton.setImage(iconApple, for: .normal)
        appleButton.imageView?.contentMode = .scaleAspectFit
        appleButton.imageEdgeInsets = UIEdgeInsets(top: 0, left: -20, bottom: 0, right: 0)
        
        appleButton.layer.cornerRadius = 8
        appleButton.setGradientBackgroundColors(  [UIColor(named: "Apple Botton")!] , direction: .toBottom, for: .normal)

        let iconArrow = UIImage(named: "arrow")!
        loginDeviceButton.setImage(iconArrow, for: .normal)
        loginDeviceButton.imageView?.contentMode = .scaleAspectFit
        loginDeviceButton.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: -20)

    }
    
    @IBAction func registerClicked(_ sender: UIButton) {
        let vc = RegisterViewController(nibName: "RegisterViewController", bundle: nil)
            if let navigationController = navigationController {
                navigationController.pushViewController(vc, animated: true)
            } else {
                print("Navigation controller unavailable! Use present method.")
                self.present(vc, animated: true, completion: nil)
            }
    }
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}

