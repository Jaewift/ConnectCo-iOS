//
//  CouponViewController.swift
//  ConneCo
//
//  Created by jaegu park on 4/24/24.
//

import UIKit

class CouponViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    
    @IBAction func enroll_Tapped(_ sender: Any) {
        guard let rvc = self.storyboard?.instantiateViewController(withIdentifier: "CouponEnrollVC") as? CouponEnrollViewController else {return}
        
        self.navigationController?.pushViewController(rvc, animated: true)
    }
}
