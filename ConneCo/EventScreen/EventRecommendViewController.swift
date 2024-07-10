//
//  EventRecommendViewController.swift
//  ConneCo
//
//  Created by jaegu park on 5/29/24.
//

import UIKit

class EventRecommendViewController: UIViewController {
    
    @IBOutlet weak var EventRecommendTableView: UITableView!
    
    var eventImages = ["ConneCo_Uni", "ConneCo_Quiz", "ConneCo_Food"]
    var eventUnis = ["한양대학교", "한국외대", "건국대"]
    var eventNames = ["한양 패스 행사", "한국외대 학생회 기말고사 간식사업", "건국대 교육방송국 청취자 참여코너"]
    var eventDates = ["이벤트 기간: 2024.06.27~2024.07.27", "이벤트 기간: 2024.06.10~2024.06.15", "이벤트 기간: 2024.06.30~2024.12.31"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        EventRecommendTableView.rowHeight = UITableView.automaticDimension
        EventRecommendTableView.estimatedRowHeight = UITableView.automaticDimension
        
        EventRecommendTableView.delegate = self
        EventRecommendTableView.dataSource = self
        EventRecommendTableView.layer.masksToBounds = false// any value you want
        EventRecommendTableView.layer.shadowOpacity = 0.3// any value you want
        EventRecommendTableView.layer.shadowRadius = 5 // any value you want
        EventRecommendTableView.layer.shadowOffset = .init(width: 0, height: 2)
        EventRecommendTableView.contentInset = UIEdgeInsets(top: 5, left: 0, bottom: 0, right: 0)
    }
}
