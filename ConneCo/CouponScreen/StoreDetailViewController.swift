//
//  StoreDetailViewController.swift
//  ConneCo
//
//  Created by jaegu park on 5/15/24.
//

import UIKit
import NMapsMap

class StoreDetailViewController: UIViewController {
    
    @IBOutlet weak var StoreImageCV: UICollectionView!
    @IBOutlet weak var StoreCouponListTableView: UITableView!
    @IBOutlet weak var StoreMapView: UIView!
    
    var couponImages = ["ConneCo_Cookie", "ConneCo_Drink"]
    var couponStores = ["호말", "호말"]
    var couponNames = ["쿠키 무료 제공 쿠폰", "전 음료 10%할인 쿠폰"]
    var couponDates = ["신청마감일: 2023.12.29", "신청마감일: 2023.12.29"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        let mapView = NMFMapView(frame: self.StoreMapView.frame)
//        view.addSubview(mapView)
        
        self.StoreImageCV.delegate = self
        self.StoreImageCV.dataSource = self
        
        StoreCouponListTableView.rowHeight = UITableView.automaticDimension
        StoreCouponListTableView.estimatedRowHeight = UITableView.automaticDimension
        
        StoreCouponListTableView.delegate = self
        StoreCouponListTableView.dataSource = self
        StoreCouponListTableView.layer.masksToBounds = true// any value you want
        StoreCouponListTableView.layer.shadowOpacity = 0.3// any value you want
        StoreCouponListTableView.layer.shadowRadius = 5 // any value you want
        StoreCouponListTableView.layer.shadowOffset = .init(width: 0, height: 2)
        StoreCouponListTableView.contentInset = UIEdgeInsets(top: 5, left: 0, bottom: 0, right: 0)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.setNavigationBarHidden(true, animated: false)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        navigationController?.setNavigationBarHidden(false, animated: false)
    }

    @IBAction func back_Button(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
}
