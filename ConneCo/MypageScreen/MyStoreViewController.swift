//
//  MyStoreViewController.swift
//  ConneCo
//
//  Created by jaegu park on 6/17/24.
//

import UIKit

class MyStoreViewController: UIViewController {
    
    @IBOutlet weak var MyStoreTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        MyStoreTableView.rowHeight = UITableView.automaticDimension
        MyStoreTableView.estimatedRowHeight = UITableView.automaticDimension
        
        MyStoreTableView.delegate = self
        MyStoreTableView.dataSource = self
        MyStoreTableView.layer.masksToBounds = false// any value you want
        MyStoreTableView.layer.shadowOpacity = 0.3// any value you want
        MyStoreTableView.layer.shadowRadius = 5 // any value you want
        MyStoreTableView.layer.shadowOffset = .init(width: 0, height: 2)
    }
}
