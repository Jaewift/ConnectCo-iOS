//
//  MyCouponViewController.swift
//  ConneCo
//
//  Created by jaegu park on 6/17/24.
//

import UIKit

class MyCouponViewController: UIViewController {
    
    @IBOutlet weak var MyCouponTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        MyCouponTableView.rowHeight = UITableView.automaticDimension
        MyCouponTableView.estimatedRowHeight = UITableView.automaticDimension
        
        MyCouponTableView.delegate = self
        MyCouponTableView.dataSource = self
        MyCouponTableView.layer.masksToBounds = false// any value you want
        MyCouponTableView.layer.shadowOpacity = 0.3// any value you want
        MyCouponTableView.layer.shadowRadius = 5 // any value you want
        MyCouponTableView.layer.shadowOffset = .init(width: 0, height: 2)
        MyCouponTableView.contentInset = UIEdgeInsets(top: 5, left: 0, bottom: 0, right: 0)
    }

}
