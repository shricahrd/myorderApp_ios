//  CategoryContorller.swift
//  MyOrderApp
//  Created by RAKESH KUSHWAHA on 27/07/20.
//  Copyright © 2020 rakesh. All rights reserved.

import UIKit
class CategoryContorller: UIViewController, UIScrollViewDelegate {
    @IBOutlet var tableViewList: UITableView!
    @IBOutlet var viewBG: UIView!
    @IBOutlet var clearAll: UIButton!
    @IBOutlet var applyButton: UIButton!
    var screenSize: CGRect = UIScreen.main.bounds
    var screenWidth: CGFloat = 0.0
    var screenHeight: CGFloat = 0.0
    var scrollViewMain = UIScrollView()
    var colors:[UIColor] = [UIColor.red, UIColor.blue, UIColor.green, UIColor.orange, UIColor.red, UIColor.blue, UIColor.green, UIColor.orange]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        screenWidth = screenSize.width
        screenHeight = screenSize.height
        
        self.view.backgroundColor = UIColor(red:215.0 / 255.0, green:215.0 / 255.0, blue:215.0 / 255.0, alpha: 1.0)
        self.uiSetUpScrollView()
    }
    
    func uiSetUpScrollView() {
         scrollViewMain.frame = CGRect(x: 0, y: 0, width: screenWidth, height: screenHeight);
         scrollViewMain.bounces = true
         scrollViewMain.delegate = self
         scrollViewMain.backgroundColor = UIColor(red:215.0 / 255.0, green:215.0 / 255.0, blue:215.0 / 255.0, alpha: 1.0)
         view.addSubview(scrollViewMain)
        
         let viewBrandBg = UIView()
         viewBrandBg.frame = CGRect(x: 0, y: 0, width: screenWidth, height: 70);
         viewBrandBg.backgroundColor = UIColor(red:222.0 / 255.0, green:222.0 / 255.0, blue:222.0 / 255.0, alpha: 1.0)
         scrollViewMain.addSubview(viewBrandBg)
        
         let title = UILabel()
         title.frame = CGRect(x: 16, y: 0, width: screenWidth-10, height: 70);
         title.text = "Brand";
         title.font = UIFont.boldSystemFont(ofSize: 14)
         viewBrandBg.addSubview(title)
        
         let imageArrow = UIImageView()
         imageArrow.frame = CGRect(x: title.frame.maxX-40, y: (viewBrandBg.frame.size.height) - (viewBrandBg.frame.size.height/2+12), width: 12, height: 16);
         imageArrow.image = UIImage(named: "arrow_icon_mr")
         viewBrandBg.addSubview(imageArrow)
        
         let viewCategoryBg = UIView()
         viewCategoryBg.frame = CGRect(x: 0, y: viewBrandBg.frame.maxY+2, width: screenWidth, height: 160);
         viewCategoryBg.backgroundColor = UIColor(red:222.0 / 255.0, green:222.0 / 255.0, blue:222.0 / 255.0, alpha: 1.0)
         scrollViewMain.addSubview(viewCategoryBg)
        
         let categoryTitle = UILabel()
         categoryTitle.frame = CGRect(x: 16, y: 0, width: screenWidth-50, height: 30);
         categoryTitle.text = "Category";
         categoryTitle.font = UIFont.boldSystemFont(ofSize: 14)
         viewCategoryBg.addSubview(categoryTitle)
        
         let viewColorBg = UIView()
         viewColorBg.frame = CGRect(x: 0, y: viewCategoryBg.frame.maxY+2, width: screenWidth, height: 160);
         viewColorBg.backgroundColor = UIColor(red:222.0 / 255.0, green:222.0 / 255.0, blue:222.0 / 255.0, alpha: 1.0)
         scrollViewMain.addSubview(viewColorBg)
        
         let ColorTitle = UILabel()
         ColorTitle.frame = CGRect(x: 16, y: 0, width: screenWidth-50, height: 30);
         ColorTitle.text = "Color";
         ColorTitle.font = UIFont.boldSystemFont(ofSize: 14)
         viewColorBg.addSubview(ColorTitle)
        
         let viewsizeBg = UIView()
         viewsizeBg.frame = CGRect(x: 0, y: viewColorBg.frame.maxY+2, width: screenWidth, height: 160);
         viewsizeBg.backgroundColor = UIColor(red:222.0 / 255.0, green:222.0 / 255.0, blue:222.0 / 255.0, alpha: 1.0)
         scrollViewMain.addSubview(viewsizeBg)
        
         let sizeTitle = UILabel()
         sizeTitle.frame = CGRect(x: 16, y: 0, width: screenWidth-50, height: 30);
         sizeTitle.text = "Size ";
         sizeTitle.font = UIFont.boldSystemFont(ofSize: 14)
         viewsizeBg.addSubview(sizeTitle)
        
         let viewRangeBg = UIView()
         viewRangeBg.frame = CGRect(x: 0, y: viewsizeBg.frame.maxY+2, width: screenWidth, height: 160);
         viewRangeBg.backgroundColor = UIColor(red:222.0 / 255.0, green:222.0 / 255.0, blue:222.0 / 255.0, alpha: 1.0)
         scrollViewMain.addSubview(viewRangeBg)
        
         let viewRangeBgTitle = UILabel()
         viewRangeBgTitle.frame = CGRect(x: 16, y: 0, width: screenWidth-50, height: 30);
         sizeTitle.text = "Range ";
         viewRangeBg.addSubview(viewRangeBgTitle)
        
         scrollViewMain.contentSize = CGSize(width: 0, height: viewRangeBg.frame.maxY+300)
    }
    
    
    
    @IBAction func applyAction(_ sender: Any) {
        
    }
    
    @IBAction func clearAllAction(_ sender: Any) {
        
    }
}

