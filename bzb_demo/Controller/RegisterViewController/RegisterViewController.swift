//
//  RegisterViewController.swift
//  bzb_demo
//
//  Created by BOICOMP21070027 on 24/2/2565 BE.
//

import UIKit
import ActiveLabel

class RegisterViewController: UIViewController {
    @IBOutlet weak var termsConditionLabel: UILabel!
    @IBOutlet weak var confirmPasswordField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var phoneField: UITextField!
    @IBOutlet weak var lastNameField: UITextField!
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var fieldBackground: UIView!
    @IBOutlet weak var backToLogin: UIButton!
    @IBOutlet weak var checkBoxOutlet:UIButton!
    @IBOutlet weak var registerButton: UIButton!
    {
            didSet{
                checkBoxOutlet.setImage(UIImage(named:"unchecked"), for: .normal)
                checkBoxOutlet.setImage(UIImage(named:"checked"), for: .selected)
            }
        }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.setHidesBackButton(true, animated: true)
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)

        fieldBackground.clipsToBounds = true
        fieldBackground.layer.cornerRadius = 48
        fieldBackground.layer.maskedCorners = [ .layerMinXMinYCorner] // Top left corner
        
        let colors:[UIColor] = [ UIColor(named: "Login btn Bottom")! , UIColor(named: "Login btn Top")!]
        registerButton.setGradientBackgroundColors(  colors , direction: .toBottom, for: .normal)
        registerButton.layer.cornerRadius = 8
        
        textFieldSetup()
        
    }
    
    func textFieldSetup(){
        
        nameField.text = ""
        nameField.layer.cornerRadius = 8
        nameField.layer.borderWidth = 1
        nameField.layer.borderColor = UIColor.textFieldCorner.cgColor
        
        lastNameField.text = ""
        lastNameField.layer.cornerRadius = 8
        lastNameField.layer.borderWidth = 1
        lastNameField.layer.borderColor = UIColor.textFieldCorner.cgColor
        
        usernameField.text = ""
        usernameField.layer.cornerRadius = 8
        usernameField.layer.borderWidth = 1
        usernameField.layer.borderColor = UIColor.textFieldCorner.cgColor
        
        phoneField.text = ""
        phoneField.layer.cornerRadius = 8
        phoneField.layer.borderWidth = 1
        phoneField.layer.borderColor = UIColor.textFieldCorner.cgColor
        
        passwordField.text = ""
        passwordField.layer.cornerRadius = 8
        passwordField.layer.borderWidth = 1
        passwordField.layer.borderColor = UIColor.textFieldCorner.cgColor
        
        confirmPasswordField.text = ""
        confirmPasswordField.layer.cornerRadius = 8
        confirmPasswordField.layer.borderWidth = 1
        confirmPasswordField.layer.borderColor = UIColor.textFieldCorner.cgColor
    }

    @IBAction func checkbox(_ sender: UIButton){
           sender.checkboxAnimation {}
   }
    @IBAction func backToLoginClicked(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}

