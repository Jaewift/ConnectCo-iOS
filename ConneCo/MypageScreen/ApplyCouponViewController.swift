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

    @IBAction func back_Button(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
}
