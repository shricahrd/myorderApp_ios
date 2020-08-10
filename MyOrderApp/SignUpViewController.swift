//  SignUpViewController.swift
//  MyOrderApp
//  Created by RAKESH KUSHWAHA on 07/07/20.
//  Copyright © 2020 rakesh. All rights reserved.


import UIKit

class SignUpViewController: UIViewController {

 @IBOutlet var viewBg: UIView!
 @IBOutlet var userName: UITextField!
 @IBOutlet var email: UITextField!
 @IBOutlet var mobile: UITextField!
 @IBOutlet var password: UITextField!
 @IBOutlet var unshow: UIButton!
 @IBOutlet var signup: UIButton!
 @IBOutlet var btnSignin: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColorforBackGroundColor
        
        self.viewBg.layer.cornerRadius = 30
        self.viewBg.clipsToBounds = true
        self.viewBg.backgroundColor = UIColor(red:255.0 / 255.0, green:255.0 / 255.0, blue:255.0 / 255.0, alpha:1.0)
        self.viewBg.layer.borderWidth = 1.4;
        self.viewBg.layer.borderColor = UIColor.gray.withAlphaComponent(0.1).cgColor
        self.viewBg.layer.masksToBounds = false
        self.viewBg.layer.shadowRadius = 3.0
        self.viewBg.layer.shadowColor = UIColor.black.cgColor
        self.viewBg.layer.shadowOffset = CGSize(width: 2.0, height: 2.0)
        self.viewBg.layer.shadowOpacity = 0.7
        
        self.signup.layer.cornerRadius = 12;
        
        
        
        /*
         let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
         let vc = storyBoard.instantiateViewController(withIdentifier: "RegisterPlay") as! RegisterPlay
         self.navigationController?.pushViewController(vc, animated: true)
        */
        
        
     }

        @IBAction func unshow(_ sender: Any) {
            
       }
        
        @IBAction func signup(_ sender: Any) {
            let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            if let vc = storyBoard.instantiateViewController(withIdentifier: "SignupTermsCController") as? SignupTermsCController {
                self.navigationController?.pushViewController(vc, animated: true)
            }
        }
       @IBAction func signin(_ sender: Any) {
            
        }
    }

