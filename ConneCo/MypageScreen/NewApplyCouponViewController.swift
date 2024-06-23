//
//  NewApplyCouponViewController.swift
//  ConneCo
//
//  Created by jaegu park on 6/17/24.
//

import UIKit

class NewApplyCouponViewController: UIViewController {
    
    @IBOutlet weak var NewApplyCouponTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        NewApplyCouponTableView.rowHeight = UITableView.automaticDimension
        NewApplyCouponTableView.estimatedRowHeight = UITableView.automaticDimension
        
        NewApplyCouponTableView.delegate = self
        NewApplyCouponTableView.dataSource = self
        NewApplyCouponTableView.layer.masksToBounds = false// any value you want
        NewApplyCouponTableView.layer.shadowOpacity = 0.3// any value you want
        NewApplyCouponTableView.layer.shadowRadius = 5 // any value you want
        NewApplyCouponTableView.layer.shadowOffset = .init(width: 0, height: 2)
        NewApplyCouponTableView.contentInset = UIEdgeInsets(top: 5, left: 0, bottom: 0, right: 0)
    }

}
