//
//  StorePickViewController.swift
//  ConneCo
//
//  Created by jaegu park on 5/5/24.
//

import UIKit

class StorePickViewController: UIViewController {
    
    @IBOutlet weak var StorePickTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        StorePickTableView.rowHeight = UITableView.automaticDimension
        StorePickTableView.estimatedRowHeight = UITableView.automaticDimension
        
        StorePickTableView.delegate = self
        StorePickTableView.dataSource = self
        StorePickTableView.layer.masksToBounds = true// any value you want
        StorePickTableView.layer.shadowOpacity = 0.12// any value you want
        StorePickTableView.layer.shadowRadius = 10 // any value you want
        StorePickTableView.layer.shadowOffset = .init(width: 5, height: 10)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
