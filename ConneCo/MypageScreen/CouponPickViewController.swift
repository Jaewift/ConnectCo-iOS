//
//  CouponPickViewController.swift
//  ConneCo
//
//  Created by jaegu park on 5/5/24.
//

import UIKit

class CouponPickViewController: UIViewController {
    
    @IBOutlet weak var CouponPickTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        CouponPickTableView.rowHeight = UITableView.automaticDimension
        CouponPickTableView.estimatedRowHeight = UITableView.automaticDimension
        
        CouponPickTableView.delegate = self
        CouponPickTableView.dataSource = self
        CouponPickTableView.layer.masksToBounds = false// any value you want
        CouponPickTableView.layer.shadowOpacity = 0.3// any value you want
        CouponPickTableView.layer.shadowRadius = 5 // any value you want
        CouponPickTableView.layer.shadowOffset = .init(width: 0, height: 2)
        CouponPickTableView.contentInset = UIEdgeInsets(top: 5, left: 0, bottom: 0, right: 0)
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
