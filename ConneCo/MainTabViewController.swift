//
//  MainTabViewController.swift
//  ConneCo
//
//  Created by jaegu park on 3/30/24.
//

import UIKit

class MainTabViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabBar.tintColor = UIColor(red: 23/255, green: 158/255, blue: 255/255, alpha: 1.0)
        tabBar.unselectedItemTintColor = UIColor(red: 172/255, green: 172/255, blue: 172/255, alpha: 1.0)
        tabBar.backgroundColor = .white
        tabBar.layer.cornerRadius = 25
        tabBar.layer.masksToBounds = false
        tabBar.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        
        self.navigationController?.navigationBar.topItem?.title = ""
        self.navigationController?.navigationBar.tintColor = .clear
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = false
        
        setupStyle()
    }
    
    func setupStyle() {
        UITabBar.clearShadow()
        tabBar.layer.applyShadow(color: .gray, alpha: 0.3, x: 0, y: 0, blur: 12)
    }
}
