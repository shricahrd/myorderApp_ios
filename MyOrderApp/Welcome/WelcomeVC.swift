//  WelcomeVC.swift
//  MyOrderApp
//  Created by RAKESH KUSHWAHA on 13/07/20.
//  Copyright © 2020 rakesh. All rights reserved.

import UIKit

class WelcomeVC: UIViewController {
    @IBOutlet var viewBG: UIView!
    @IBOutlet var btnManufacture: UIButton!
    @IBOutlet var btnDistributor: UIButton!
    @IBOutlet var btnRetailer: UIButton!
    @IBOutlet var btnStockist: UIButton!
    @IBOutlet var btnSalesAgent: UIButton!
    @IBOutlet var btnGetStarted: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewBG.layer.cornerRadius = 35
        btnManufacture.layer.cornerRadius = 15
        btnManufacture.clipsToBounds = true
        btnDistributor.layer.cornerRadius = 15
        btnDistributor.clipsToBounds = true
        btnRetailer.layer.cornerRadius = 15
        btnRetailer.clipsToBounds = true
        btnStockist.layer.cornerRadius = 15
        btnStockist.clipsToBounds = true
        btnSalesAgent.layer.cornerRadius = 15
        btnSalesAgent.clipsToBounds = true
        btnGetStarted.layer.cornerRadius = 25
        btnGetStarted.clipsToBounds = true
    }
    
    @IBAction func btnGetStarted(_ sender: Any) {
        let storyboard = UIStoryboard(name:"Main", bundle: Bundle.main)
        if let attachedPrescriptionListController = storyboard.instantiateViewController(withIdentifier: "SignUpViewController") as? SignUpViewController {
           self.navigationController?.pushViewController(attachedPrescriptionListController, animated: true)
        }
    }
    
    @IBAction func btnSignIn(_ sender: Any) {
    }
    @IBAction func btnManufacture(_ sender: Any) {
    }
    @IBAction func btnDistributor(_ sender: Any) {
    }
    @IBAction func btnRetailer(_ sender: Any) {
    }
    
    @IBAction func btnStokist(_ sender: Any) {
    }
    @IBAction func btnSalesAgent(_ sender: Any) {
    }
    
}
