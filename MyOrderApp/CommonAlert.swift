//
//  CommonAlert.swift
//  PatientAppNew
//
//  Created by RK on 09/08/19.
//  Copyright © 2019 Doctor Insta. All rights reserved.
//

import UIKit

class CommonAlert {
    //var delegate: alertDelegate?
    static let shared = CommonAlert()
    
    func showActionAlertView(title:String,message:String,actions:[UIAlertAction],preferredStyle:UIAlertController.Style = .alert,viewController:UIViewController?) -> Void {
        let alertController = UIAlertController(title: title, message:message, preferredStyle: preferredStyle)
        if actions.isEmpty {
            alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: { (action: UIAlertAction!) in
                viewController?.dismiss(animated: true, completion: nil)
            }))
        }else{
            for action in actions {
                alertController.addAction(action)
            }
        }
        
        viewController?.present(alertController, animated: true, completion: nil)
    }
}
