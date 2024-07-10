//
//  UniViewController.swift
//  ConneCo
//
//  Created by jaegu park on 5/15/24.
//

import UIKit

class UniViewController: UIViewController {
    
    @IBOutlet weak var UniEventTableView: UITableView!
    
    var eventImages = ["ConneCo_Uni", "ConneCo_Quiz", "ConneCo_Food"]
    var eventUnis = ["한양대학교", "한국외대", "건국대"]
    var eventNames = ["한양 패스 행사", "한국외대 학생회 기말고사 간식사업", "건국대 교육방송국 청취자 참여코너"]
    var eventDates = ["이벤트 기간: 2024.06.27~2024.07.27", "이벤트 기간: 2024.06.10~2024.06.15", "이벤트 기간: 2024.06.30~2024.12.31"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UniEventTableView.rowHeight = UITableView.automaticDimension
        UniEventTableView.estimatedRowHeight = UITableView.automaticDimension
        
        UniEventTableView.delegate = self
        UniEventTableView.dataSource = self
        UniEventTableView.layer.masksToBounds = true// any value you want
        UniEventTableView.layer.shadowOpacity = 0.3// any value you want
        UniEventTableView.layer.shadowRadius = 5 // any value you want
        UniEventTableView.layer.shadowOffset = .init(width: 0, height: 2)
        UniEventTableView.contentInset = UIEdgeInsets(top: 5, left: 0, bottom: 0, right: 0)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.setNavigationBarHidden(true, animated: false)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        navigationController?.setNavigationBarHidden(false, animated: false)
    }
    
    @IBAction func back_Tapped(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
}
