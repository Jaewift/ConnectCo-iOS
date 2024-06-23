//
//  PlaceInfoViewController.swift
//  ConneCo
//
//  Created by jaegu park on 6/24/24.
//

import UIKit

class PlaceInfoViewController: UIViewController {
    
    @IBOutlet weak var PlaceTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        PlaceTableView.rowHeight = UITableView.automaticDimension
        PlaceTableView.estimatedRowHeight = UITableView.automaticDimension

        PlaceTableView.delegate = self
        PlaceTableView.dataSource = self
        PlaceTableView.layer.masksToBounds = true// any value you want
        PlaceTableView.layer.shadowOpacity = 0.3// any value you want
        PlaceTableView.layer.shadowRadius = 5 // any value you want
        PlaceTableView.layer.shadowOffset = .init(width: 0, height: 2)
        PlaceTableView.contentInset = UIEdgeInsets(top: 5, left: 0, bottom: 0, right: 0)
    }
}
