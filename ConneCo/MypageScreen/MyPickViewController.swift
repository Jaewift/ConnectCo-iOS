//
//  MyPickViewController.swift
//  ConneCo
//
//  Created by jaegu park on 5/5/24.
//

import UIKit

class MyPickViewController: UIViewController {
    
    @IBOutlet weak var EventPickView: UIView!
    @IBOutlet weak var CouponPickView: UIView!
    @IBOutlet weak var StorePickView: UIView!
    @IBOutlet weak var EventPickButton: UIButton!
    @IBOutlet weak var CouponPickButton: UIButton!
    @IBOutlet weak var StorePickButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        CouponPickButton.isHighlighted = true
        StorePickButton.isHighlighted = true
        CouponPickView.alpha = 0
        StorePickView.alpha = 0
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    
    @IBAction func EventPick_Tapped(_ sender: Any) {
        CouponPickButton.isHighlighted = true
        StorePickButton.isHighlighted = true
        EventPickView.alpha = 1
        CouponPickView.alpha = 0
        StorePickView.alpha = 0
    }
    
    @IBAction func CouponPick_Tapped(_ sender: Any) {
        EventPickButton.isHighlighted = true
        StorePickButton.isHighlighted = true
        EventPickView.alpha = 0
        CouponPickView.alpha = 1
        StorePickView.alpha = 0
    }
    
    @IBAction func StorePick_Tapped(_ sender: Any) {
        CouponPickButton.isHighlighted = true
        EventPickButton.isHighlighted = true
        EventPickView.alpha = 0
        CouponPickView.alpha = 0
        StorePickView.alpha = 1
    }
}
