//
//  CompleteApplyViewController.swift
//  ConneCo
//
//  Created by jaegu park on 6/17/24.
//

import UIKit

class CompleteApplyEventViewController: UIViewController {
    
    @IBOutlet weak var CompleteApplyEventTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        CompleteApplyEventTableView.rowHeight = UITableView.automaticDimension
        CompleteApplyEventTableView.estimatedRowHeight = UITableView.automaticDimension
        
        CompleteApplyEventTableView.delegate = self
        CompleteApplyEventTableView.dataSource = self
        CompleteApplyEventTableView.layer.masksToBounds = false// any value you want
        CompleteApplyEventTableView.layer.shadowOpacity = 0.3// any value you want
        CompleteApplyEventTableView.layer.shadowRadius = 5 // any value you want
        CompleteApplyEventTableView.layer.shadowOffset = .init(width: 0, height: 2)
        CompleteApplyEventTableView.contentInset = UIEdgeInsets(top: 5, left: 0, bottom: 0, right: 0)
    }

}
