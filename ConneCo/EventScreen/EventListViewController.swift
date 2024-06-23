//
//  EventListViewController.swift
//  ConneCo
//
//  Created by jaegu park on 5/29/24.
//

import UIKit

class EventListViewController: UIViewController {
    
    @IBOutlet weak var EventListTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        EventListTableView.rowHeight = UITableView.automaticDimension
        EventListTableView.estimatedRowHeight = UITableView.automaticDimension

        EventListTableView.delegate = self
        EventListTableView.dataSource = self
        EventListTableView.layer.masksToBounds = true// any value you want
        EventListTableView.layer.shadowOpacity = 0.3// any value you want
        EventListTableView.layer.shadowRadius = 5 // any value you want
        EventListTableView.layer.shadowOffset = .init(width: 0, height: 2)
        EventListTableView.contentInset = UIEdgeInsets(top: 5, left: 0, bottom: 0, right: 0)
    }
}
