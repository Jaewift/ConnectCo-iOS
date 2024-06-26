//
//  PlaceInfoViewController.swift
//  ConneCo
//
//  Created by jaegu park on 6/24/24.
//

import UIKit

class PlaceInfoViewController: UIViewController {
    
    @IBOutlet weak var PlaceTableView: UITableView!
    
    var placeImages = ["ConneCo_Store", "ConneCo_Uni"]
    var placeNames = ["호말", "한양대학교"]
    var placeTitles = ["마들렌 무료 제공 쿠폰", "한양 패스 행사"]
    var placeDates = ["신청마감일: 2023.12.29", "이벤트 기간: 2024.06.27~2024.07.27"]
    
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
