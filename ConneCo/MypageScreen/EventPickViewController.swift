//
//  EventPickViewController.swift
//  ConneCo
//
//  Created by jaegu park on 5/5/24.
//

import UIKit

class EventPickViewController: UIViewController {
    
    @IBOutlet weak var EventPickTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        EventPickTableView.rowHeight = UITableView.automaticDimension
        EventPickTableView.estimatedRowHeight = UITableView.automaticDimension
        
        EventPickTableView.delegate = self
        EventPickTableView.dataSource = self
        
        EventPickTableView.layer.masksToBounds = true// any value you want
        EventPickTableView.layer.shadowOpacity = 0.12// any value you want
        EventPickTableView.layer.shadowRadius = 10 // any value you want
        EventPickTableView.layer.shadowOffset = .init(width: 5, height: 10)
    }
}
