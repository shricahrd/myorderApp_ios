//
//  SearchByBrandController.swift
//  MyOrderApp
//
//  Created by RAKESH KUSHWAHA on 19/07/20.
//  Copyright © 2020 rakesh. All rights reserved.
//

import UIKit

class SearchByBrandController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet var textFieldSearch: UITextField!
    @IBOutlet var tableViewList: UITableView!
    @IBOutlet var searchbutton: UIButton!
    
    var arrayData = ["Top wear", "Bottom wear", "Accessories"]
    var screenSize:CGRect = UIScreen.main.bounds
    var screenWidth:CGFloat = 0.0
    var screenHeight:CGFloat = 0.0
    var customPopUp: UIView!
    var tableviewPopUp: UITableView!
    var arraySelecteditems = NSMutableArray()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.screenWidth = screenSize.width
        self.screenHeight = screenSize.height
        self.navigationController?.isNavigationBarHidden = true
        self.registerNib()
        
        textFieldSearch.layer.borderColor = UIColor.gray.cgColor
        textFieldSearch.layer.borderWidth = 1
        textFieldSearch.layer.cornerRadius = 25
        textFieldSearch.clipsToBounds = true
        
        //popUp()
    }
    
    @IBAction func cartAction(_ sender: Any) {
        callPopUp()
    }
    
    func registerNib() {
        tableViewList.register(UINib(nibName: "searchbybrandCell", bundle: nil), forCellReuseIdentifier: "searchbybrandCell")
        tableViewList.delegate = self
        tableViewList.dataSource = self
        tableViewList.separatorStyle = .none
    }
    
    func popUp()  {
        customPopUp = UIView()
        customPopUp.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height)
        customPopUp.backgroundColor =  UIColor(red: 0.0/255.0, green: 0.0/255.0, blue: 0.0/255.0, alpha: 0.3)
        self.view.addSubview(customPopUp)
        customPopUp.isHidden = true
      
        let viewBg = UIView()
        viewBg.frame = CGRect(x: 0, y: self.view.frame.height - 300, width: self.view.frame.width, height: 300)
        viewBg.backgroundColor = UIColor.white
        viewBg.layer.cornerRadius = 35
        viewBg.clipsToBounds = true
        customPopUp.addSubview(viewBg)
        
        let title: UILabel! = UILabel()
        title.frame = CGRect(x: 0, y: 0, width: viewBg.frame.size.width, height: 50)
        title.text = "Sort by"
        title.numberOfLines = 1
        title.backgroundColor = .clear
        title.textAlignment = .center
        title.textColor = UIColor(red: 0.0/255.0, green: 0.0/255.0, blue: 0.0/255.0, alpha: 1)
        title.font = UIFont.boldSystemFont(ofSize: 16)
        viewBg.addSubview(title)
        
        tableviewPopUp = UITableView()
        tableviewPopUp.frame = CGRect(x: 0, y: title.frame.maxY, width: viewBg.frame.size.width, height: viewBg.frame.height - (title.frame.maxY))
        tableviewPopUp.backgroundColor = .clear
        tableviewPopUp.delegate = self
        tableviewPopUp.dataSource = self
        tableviewPopUp.separatorStyle = .none
        tableviewPopUp.register(UINib(nibName: "popCell", bundle: nil), forCellReuseIdentifier: "popCell")
        viewBg.addSubview(tableviewPopUp)
  
    }
    
    func callPopUp() {
         UIView.animate(withDuration: Double(0.5),
                                  delay: 0.0,
                                  options: .beginFromCurrentState, animations: { () -> Void in
                                   self.customPopUp.isHidden = false
         }, completion: { (Bool) -> Void in
                   })
    }
    
    
    
      @IBAction func searchAction(_ sender: Any) {
    
      }
    
      // MARK: - TableView Delegate Methods
       func numberOfSections(in tableView: UITableView) -> Int {
           return 1
       }
       
       func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayData.count
       }
    
       func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
          return 70
       }
       
       func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
           return UITableView.automaticDimension
       }

       func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
             if let cell = tableView.dequeueReusableCell(withIdentifier: "searchbybrandCell", for: indexPath) as? searchbybrandCell {
               cell.selectionStyle = .none
               cell.title.text = "   \(arrayData[indexPath.row])"
               cell.backgroundColor = UIColor(red:255.0/255.0, green: 255.0/255.0, blue: 255.0/255.0, alpha: 1.0)
               cell.title.textColor = UIColor(red:0.0/255.0, green: 0.0/255.0, blue: 0.0/255.0, alpha: 1.0)
               cell.addButton.addTarget(self, action: #selector(self.addAction), for: UIControl.Event.touchUpInside)
               return cell
        }
           return UITableViewCell()
       }
       
       func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
           tableView.deselectRow(at: indexPath, animated: true)
           let backItem = UIBarButtonItem()
           backItem.title = ""
           navigationItem.backBarButtonItem = backItem

       }
    
    @objc func addAction(_ sender: UIButton) {
        
    }

}
