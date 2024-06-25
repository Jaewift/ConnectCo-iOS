//
//  NewApplyViewController.swift
//  ConneCo
//
//  Created by jaegu park on 6/17/24.
//

import UIKit

class NewApplyEventViewController: UIViewController {
    
    @IBOutlet weak var NewApplyEventTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        NewApplyEventTableView.rowHeight = UITableView.automaticDimension
        NewApplyEventTableView.estimatedRowHeight = UITableView.automaticDimension
        
        NewApplyEventTableView.delegate = self
        NewApplyEventTableView.dataSource = self
        NewApplyEventTableView.layer.masksToBounds = false// any value you want
        NewApplyEventTableView.layer.shadowOpacity = 0.3// any value you want
        NewApplyEventTableView.layer.shadowRadius = 5 // any value you want
        NewApplyEventTableView.layer.shadowOffset = .init(width: 0, height: 2)
        NewApplyEventTableView.contentInset = UIEdgeInsets(top: 5, left: 0, bottom: 0, right: 0)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }

}
