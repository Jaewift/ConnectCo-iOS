//
//  CouponListViewController.swift
//  ConneCo
//
//  Created by jaegu park on 6/12/24.
//

import UIKit

class CouponListViewController: UIViewController {
    
    @IBOutlet weak var CouponListTableView: UITableView!
    
    var couponImages = ["ConneCo_Cookie", "ConneCo_Drink", "ConneCo_Fitness", "ConneCo_Hair", "ConneCo_Nail"]
    var couponStores = ["호말", "호말", "포시즌휘트니스 왕십리점", "준오헤어 왕십리점", "팅커벨네일아트 왕십리점"]
    var couponNames = ["쿠키 무료 제공 쿠폰", "전 음료 10%할인 쿠폰", "기간권 할인 쿠폰", "금액 할인 쿠폰", "협찬 쿠폰"]
    var couponDates = ["신청마감일: 2023.12.29", "신청마감일: 2023.12.29", "신청마감일: 2023.12.31", "신청마감일: 2023.12.31", "신청마감일: 2023.12.20"]
    
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
