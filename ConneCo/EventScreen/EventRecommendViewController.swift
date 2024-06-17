//
//  EventRecommendViewController.swift
//  ConneCo
//
//  Created by jaegu park on 5/29/24.
//

import UIKit

class EventRecommendViewController: UIViewController {
    
    @IBOutlet weak var EventRecommendTableView: UITableView!
    
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
    }
}
