//
//  CompleteApplyCouponViewController.swift
//  ConneCo
//
//  Created by jaegu park on 6/17/24.
//

import UIKit

class CompleteApplyCouponViewController: UIViewController {
    
    @IBOutlet weak var CompleteApplyCouponTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        CompleteApplyCouponTableView.rowHeight = UITableView.automaticDimension
        CompleteApplyCouponTableView.estimatedRowHeight = UITableView.automaticDimension
        
        CompleteApplyCouponTableView.delegate = self
        CompleteApplyCouponTableView.dataSource = self
        CompleteApplyCouponTableView.layer.masksToBounds = false// any value you want
        CompleteApplyCouponTableView.layer.shadowOpacity = 0.3// any value you want
        CompleteApplyCouponTableView.layer.shadowRadius = 5 // any value you want
        CompleteApplyCouponTableView.layer.shadowOffset = .init(width: 0, height: 2)
    }
}
