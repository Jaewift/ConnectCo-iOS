//
//  SponsorActivityViewController.swift
//  ConneCo
//
//  Created by jaegu park on 6/18/24.
//

import UIKit

class SponsorActivityViewController: UIViewController {
    
    @IBOutlet weak var SponsorActivityTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        SponsorActivityTableView.rowHeight = UITableView.automaticDimension
        SponsorActivityTableView.estimatedRowHeight = UITableView.automaticDimension
        
        SponsorActivityTableView.delegate = self
        SponsorActivityTableView.dataSource = self
        SponsorActivityTableView.layer.masksToBounds = false// any value you want
        SponsorActivityTableView.layer.shadowOpacity = 0.3// any value you want
        SponsorActivityTableView.layer.shadowRadius = 5 // any value you want
        SponsorActivityTableView.layer.shadowOffset = .init(width: 0, height: 2)
    }
}
