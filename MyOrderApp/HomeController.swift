//  HomeController.swift
//  MyOrderApp
//  Created by RAKESH KUSHWAHA on 06/07/20.
//  Copyright © 2020 rakesh. All rights reserved.

import UIKit
import  SideMenu
class HomeController: UIViewController {

    var menu : SideMenuNavigationController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addNavBarImage()
        menu = SideMenuNavigationController(rootViewController: MenuListController())
        menu?.leftSide = true
        menu?.setNavigationBarHidden(true, animated: true)
        SideMenuManager.default.leftMenuNavigationController = menu
        SideMenuManager.default.addPanGestureToPresent(toView: self.view)
    }
    
    func addNavBarImage() {
        let navController = navigationController!
        let image = UIImage(named: "logo")
        let imageView = UIImageView(image: image)
        let bannerWidth = navController.navigationBar.frame.size.width
        let bannerHeight = navController.navigationBar.frame.size.height
        let bannerX = bannerWidth / 2 - (image?.size.width)! / 2
        let bannerY = bannerHeight / 2 - (image?.size.height)! / 2
        imageView.frame = CGRect(x: bannerX, y: bannerY, width: bannerWidth, height: bannerHeight)
        imageView.contentMode = .scaleAspectFit
        imageView.backgroundColor = .yellow
        navigationItem.titleView = imageView
    }
    
    @IBAction func didTapMenu(){
          present(menu!,animated: true)
      }

}
