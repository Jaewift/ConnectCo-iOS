//
//  CouponListViewController.swift
//  ConneCo
//
//  Created by jaegu park on 6/12/24.
//

import UIKit

class CouponListViewController: UIViewController {
    
    @IBOutlet weak var CouponListTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        CouponListTableView.rowHeight = UITableView.automaticDimension
        CouponListTableView.estimatedRowHeight = UITableView.automaticDimension

        CouponListTableView.delegate = self
        CouponListTableView.dataSource = self
        CouponListTableView.layer.masksToBounds = true// any value you want
        CouponListTableView.layer.shadowOpacity = 0.3// any value you want
        CouponListTableView.layer.shadowRadius = 5 // any value you want
        CouponListTableView.layer.shadowOffset = .init(width: 0, height: 2)
        CouponListTableView.contentInset = UIEdgeInsets(top: 5, left: 0, bottom: 0, right: 0)
    }

}
