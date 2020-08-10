//  VerifyOTPController.swift
//  MyOrderApp
//  Created by RAKESH KUSHWAHA on 18/07/20.
//  Copyright © 2020 rakesh. All rights reserved.

import UIKit

class VerifyOTPController: UIViewController, UITextFieldDelegate {

    @IBOutlet var viewBg: UIView!
    @IBOutlet var textFieldOtp: UITextField!
    @IBOutlet var timerLabel: UILabel!
    @IBOutlet var verifyButton: UIButton!
    @IBOutlet var resendButton: UIButton!
    @IBOutlet var sentOtpMessage: UILabel!
    @IBOutlet var messageBg: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewBg.layer.cornerRadius = 35
        viewBg.clipsToBounds = true
        textFieldOtp.layer.borderWidth = 1
        textFieldOtp.layer.borderColor = UIColor.lightGray.cgColor
        textFieldOtp.delegate = self
        
    }
    
    @IBAction func verifyAction(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let vc = storyboard.instantiateViewController(withIdentifier: "ForgotPasswordController") as? ForgotPasswordController {
           self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    @IBAction func resendOtpAction(_ sender: Any) {
        
    }
    
}
