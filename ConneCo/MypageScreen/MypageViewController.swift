//
//  MypageViewController.swift
//  ConneCo
//
//  Created by jaegu park on 4/24/24.
//

import UIKit

class MypageViewController: UIViewController {
    
    @IBOutlet weak var StoreTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        StoreTableView.rowHeight = UITableView.automaticDimension
        StoreTableView.estimatedRowHeight = UITableView.automaticDimension
        
        StoreTableView.delegate = self
        StoreTableView.dataSource = self
        StoreTableView.layer.masksToBounds = true// any value you want
        StoreTableView.layer.shadowOpacity = 0.12// any value you want
        StoreTableView.layer.shadowRadius = 10 // any value you want
        StoreTableView.layer.shadowOffset = .init(width: 5, height: 10)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    
    @IBAction func Pick_Tapped(_ sender: Any) {
        guard let rvc = self.storyboard?.instantiateViewController(withIdentifier: "MyPickVC") as? MyPickViewController else {return}
        
        self.navigationController?.pushViewController(rvc, animated: true)
    }
    
    
    @IBAction func Store_Add(_ sender: Any) {
        guard let rvc = self.storyboard?.instantiateViewController(withIdentifier: "StoreEnrollVC") as? StoreEnrollViewController else {return}
        
        self.navigationController?.pushViewController(rvc, animated: true)
    }
}
