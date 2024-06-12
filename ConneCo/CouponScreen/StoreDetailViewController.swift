//
//  StoreDetailViewController.swift
//  ConneCo
//
//  Created by jaegu park on 5/15/24.
//

import UIKit
import NMapsMap

class StoreDetailViewController: UIViewController {
    
    @IBOutlet weak var StoreCouponListTableView: UITableView!
    @IBOutlet weak var StoreMapView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let mapView = NMFMapView(frame: self.StoreMapView.frame)
        view.addSubview(mapView)
        
        StoreCouponListTableView.delegate = self
        StoreCouponListTableView.dataSource = self
        StoreCouponListTableView.layer.masksToBounds = true// any value you want
        StoreCouponListTableView.layer.shadowOpacity = 0.3// any value you want
        StoreCouponListTableView.layer.shadowRadius = 5 // any value you want
        StoreCouponListTableView.layer.shadowOffset = .init(width: 0, height: 2)
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
