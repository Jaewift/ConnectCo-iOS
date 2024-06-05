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
        CouponPickTableView.layer.masksToBounds = true// any value you want
        CouponPickTableView.layer.shadowOpacity = 0.12// any value you want
        CouponPickTableView.layer.shadowRadius = 10 // any value you want
        CouponPickTableView.layer.shadowOffset = .init(width: 5, height: 10)
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
