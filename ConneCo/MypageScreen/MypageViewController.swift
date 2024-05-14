//
//  MypageViewController.swift
//  ConneCo
//
//  Created by jaegu park on 4/24/24.
//

import UIKit

class MypageViewController: UIViewController {
    
    @IBOutlet weak var StoreTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        StoreTableView.rowHeight = UITableView.automaticDimension
        StoreTableView.estimatedRowHeight = UITableView.automaticDimension
        
        StoreTableView.delegate = self
        StoreTableView.dataSource = self
        StoreTableView.layer.masksToBounds = true// any value you want
        StoreTableView.layer.shadowOpacity = 0.12// any value you want
        StoreTableView.layer.shadowRadius = 10 // any value you want
        StoreTableView.layer.shadowOffset = .init(width: 5, height: 10)
    }
}
