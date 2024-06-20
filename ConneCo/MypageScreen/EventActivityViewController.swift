//
//  EventActivityViewController.swift
//  ConneCo
//
//  Created by jaegu park on 6/18/24.
//

import UIKit

class EventActivityViewController: UIViewController {
    
    @IBOutlet weak var EventActivityTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        EventActivityTableView.rowHeight = UITableView.automaticDimension
        EventActivityTableView.estimatedRowHeight = UITableView.automaticDimension
        
        EventActivityTableView.delegate = self
        EventActivityTableView.dataSource = self
        EventActivityTableView.layer.masksToBounds = false// any value you want
        EventActivityTableView.layer.shadowOpacity = 0.3// any value you want
        EventActivityTableView.layer.shadowRadius = 5 // any value you want
        EventActivityTableView.layer.shadowOffset = .init(width: 0, height: 2)
    }
}
