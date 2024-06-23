//
//  MyEventViewController.swift
//  ConneCo
//
//  Created by jaegu park on 6/17/24.
//

import UIKit

class MyEventViewController: UIViewController {
    
    @IBOutlet weak var MyEventTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        MyEventTableView.rowHeight = UITableView.automaticDimension
        MyEventTableView.estimatedRowHeight = UITableView.automaticDimension
        
        MyEventTableView.delegate = self
        MyEventTableView.dataSource = self
        MyEventTableView.layer.masksToBounds = false// any value you want
        MyEventTableView.layer.shadowOpacity = 0.3// any value you want
        MyEventTableView.layer.shadowRadius = 5 // any value you want
        MyEventTableView.layer.shadowOffset = .init(width: 0, height: 2)
        MyEventTableView.contentInset = UIEdgeInsets(top: 5, left: 0, bottom: 0, right: 0)
    }

}
