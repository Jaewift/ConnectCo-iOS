//
//  MyStoreViewController.swift
//  ConneCo
//
//  Created by jaegu park on 6/17/24.
//

import UIKit

class MyStoreViewController: UIViewController, SampleProtocol6 {
    
    var store_Image: UIImage = UIImage(named: "ConneCo_Store")!
    var store_Name: String = "호말커피"
    var store_Address: String = "신청 가능 쿠폰 갯수: 2개"
    var store_Number: String = ""
    var store_Hour: String = ""
    var store_Description: String = "90년대 사무실 분위기에서 느끼는 힙스러움!"
    
    func imageEnroll(data: UIImage) {
        store_Image = data
    }
    
    func nameEnroll(data: String) {
        store_Name = data
    }
    
    func addressEnroll(data: String) {
        store_Address = data
    }
    
    func numberEnroll(data: String) {
        store_Number = data
    }
    
    func hourEnroll(data: String) {
        store_Hour = data
    }
    
    func descriptionEnroll(data: String) {
        store_Description = data
    }
    
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
        MyStoreTableView.contentInset = UIEdgeInsets(top: 5, left: 0, bottom: 0, right: 0)
        
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(self.didDismissDetailNotification(_:)),
            name: NSNotification.Name("DismissDetailView"),
            object: nil
        )
    }
    
    @objc func didDismissDetailNotification(_ notification: Notification) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.4) {
            self.MyStoreTableView.reloadData()
            print(self.store_Name)
            print(self.store_Address)
            print(self.store_Number)
            print(self.store_Hour)
        }
    }
    
    @IBAction func store_Add(_ sender: Any) {
        guard let rvc = self.storyboard?.instantiateViewController(withIdentifier: "StoreEnrollVC") as? StoreEnrollViewController else {return}
        rvc.delegate = self
        
        self.navigationController?.pushViewController(rvc, animated: true)
    }
}
