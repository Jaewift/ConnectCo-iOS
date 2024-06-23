//
//  CouponRecommendViewController.swift
//  ConneCo
//
//  Created by jaegu park on 6/12/24.
//

import UIKit

class CouponRecommendViewController: UIViewController {
    
    @IBOutlet weak var CouponRecommendTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        CouponRecommendTableView.rowHeight = UITableView.automaticDimension
        CouponRecommendTableView.estimatedRowHeight = UITableView.automaticDimension

        CouponRecommendTableView.delegate = self
        CouponRecommendTableView.dataSource = self
        CouponRecommendTableView.layer.masksToBounds = true// any value you want
        CouponRecommendTableView.layer.shadowOpacity = 0.3// any value you want
        CouponRecommendTableView.layer.shadowRadius = 5 // any value you want
        CouponRecommendTableView.layer.shadowOffset = .init(width: 0, height: 2)
        CouponRecommendTableView.contentInset = UIEdgeInsets(top: 5, left: 0, bottom: 0, right: 0)
    }

}
