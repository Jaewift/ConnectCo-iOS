//
//  MyCouponViewController.swift
//  ConneCo
//
//  Created by jaegu park on 6/17/24.
//

import UIKit

class MyCouponViewController: UIViewController {
    
    @IBOutlet weak var MyCouponTableView: UITableView!
    
    var couponImages = ["ConneCo_Cookie", "ConneCo_Drink"]
    var couponStores = ["호말", "호말"]
    var couponNames = ["쿠키 무료 제공 쿠폰", "전 음료 10%할인 쿠폰"]
    var couponDates = ["신청마감일: 2023.12.29", "신청마감일: 2023.12.29"]
    
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
