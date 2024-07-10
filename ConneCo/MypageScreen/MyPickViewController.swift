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
        
        CouponPickView.alpha = 0
        StorePickView.alpha = 0
        
        buttoncreate()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    
    func buttoncreate() {
        EventPickButton.layer.cornerRadius = 12
        CouponPickButton.layer.cornerRadius = 12
        StorePickButton.layer.cornerRadius = 12
        
        EventPickButton.layer.borderWidth = 0.7
        CouponPickButton.layer.borderWidth = 0.7
        StorePickButton.layer.borderWidth = 0.7
        EventPickButton.layer.borderColor = UIColor(red: 23/255, green: 158/255, blue: 255/255, alpha: 1).cgColor
        CouponPickButton.layer.borderColor = UIColor.lightGray.cgColor
        StorePickButton.layer.borderColor = UIColor.lightGray.cgColor
        
        EventPickButton.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)
        CouponPickButton.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)
        StorePickButton.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)
    }
    
    @objc func buttonTapped(_ sender: UIButton) {
        // Reset colors of all buttons
        EventPickButton.backgroundColor = UIColor(red: 245/255, green: 245/255, blue: 250/255, alpha: 1)
        CouponPickButton.backgroundColor = UIColor(red: 245/255, green: 245/255, blue: 250/255, alpha: 1)
        StorePickButton.backgroundColor = UIColor(red: 245/255, green: 245/255, blue: 250/255, alpha: 1)
        EventPickButton.setTitleColor(.black, for: .normal)
        CouponPickButton.setTitleColor(.black, for: .normal)
        StorePickButton.setTitleColor(.black, for: .normal)
        EventPickButton.layer.borderColor = UIColor.lightGray.cgColor
        CouponPickButton.layer.borderColor = UIColor.lightGray.cgColor
        StorePickButton.layer.borderColor = UIColor.lightGray.cgColor
        
        // Change the background color of the selected button
        sender.backgroundColor = UIColor(red: 23/255, green: 158/255, blue: 255/255, alpha: 1)
        sender.setTitleColor(.white, for: .normal)
        sender.layer.borderColor = UIColor(red: 23/255, green: 158/255, blue: 255/255, alpha: 1).cgColor
    }
    
    @IBAction func EventPick_Tapped(_ sender: Any) {
        EventPickView.alpha = 1
        CouponPickView.alpha = 0
        StorePickView.alpha = 0
    }
    
    @IBAction func CouponPick_Tapped(_ sender: Any) {
        EventPickView.alpha = 0
        CouponPickView.alpha = 1
        StorePickView.alpha = 0
    }
    
    @IBAction func StorePick_Tapped(_ sender: Any) {
        EventPickView.alpha = 0
        CouponPickView.alpha = 0
        StorePickView.alpha = 1
    }
    
    @IBAction func back_Button(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
}
