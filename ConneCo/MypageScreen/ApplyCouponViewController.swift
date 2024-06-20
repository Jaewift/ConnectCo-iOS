//
//  ApplyCouponViewController.swift
//  ConneCo
//
//  Created by jaegu park on 6/17/24.
//

import UIKit

class ApplyCouponViewController: UIViewController {
    
    @IBOutlet weak var NewCouponView: UIView!
    @IBOutlet weak var CompleteCouponView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        NewCouponView.alpha = 1
        CompleteCouponView.alpha = 0
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
