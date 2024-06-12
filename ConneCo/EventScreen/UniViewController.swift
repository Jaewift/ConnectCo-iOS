//
//  UniViewController.swift
//  ConneCo
//
//  Created by jaegu park on 5/15/24.
//

import UIKit

class UniViewController: UIViewController {
    
    @IBOutlet weak var UniEventTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UniEventTableView.delegate = self
        UniEventTableView.dataSource = self
        UniEventTableView.layer.masksToBounds = true// any value you want
        UniEventTableView.layer.shadowOpacity = 0.3// any value you want
        UniEventTableView.layer.shadowRadius = 5 // any value you want
        UniEventTableView.layer.shadowOffset = .init(width: 0, height: 2)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.setNavigationBarHidden(true, animated: false)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        navigationController?.setNavigationBarHidden(false, animated: false)
    }
    
    @IBAction func back_Tapped(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
}
