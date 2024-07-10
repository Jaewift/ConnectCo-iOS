//
//  PlaceInfoViewController.swift
//  ConneCo
//
//  Created by jaegu park on 6/24/24.
//

import UIKit

class PlaceInfoViewController: UIViewController {
    
    @IBOutlet weak var PlaceTableView: UITableView!
    
    var placeImages = ["ConneCo_Cookie", "ConneCo_Drink"]
    var placeNames = ["호말", "호말"]
    var placeTitles = ["쿠키 무료 제공 쿠폰", "전 음료 10%할인 쿠폰"]
    var placeDates = ["신청마감일: 2023.12.29", "신청마감일: 2023.12.29"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        PlaceTableView.rowHeight = UITableView.automaticDimension
        PlaceTableView.estimatedRowHeight = UITableView.automaticDimension

        PlaceTableView.delegate = self
        PlaceTableView.dataSource = self
        PlaceTableView.layer.masksToBounds = true// any value you want
        PlaceTableView.layer.shadowOpacity = 0.3// any value you want
        PlaceTableView.layer.shadowRadius = 5 // any value you want
        PlaceTableView.layer.shadowOffset = .init(width: 0, height: 2)
        PlaceTableView.contentInset = UIEdgeInsets(top: 5, left: 0, bottom: 0, right: 0)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }
}
