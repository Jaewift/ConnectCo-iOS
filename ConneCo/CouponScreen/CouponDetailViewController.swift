//
//  CouponDetailViewController.swift
//  ConneCo
//
//  Created by jaegu park on 5/12/24.
//

import UIKit

class CouponDetailViewController: UIViewController {
    
    @IBOutlet weak var CouponImageCV: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.CouponImageCV.delegate = self
        self.CouponImageCV.dataSource = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.setNavigationBarHidden(true, animated: false)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        navigationController?.setNavigationBarHidden(false, animated: false)
    }
    
    @IBAction func Store_Tapped(_ sender: Any) {
        guard let rvc = self.storyboard?.instantiateViewController(withIdentifier: "StoreDetailVC") as? StoreDetailViewController else {return}
        
        self.navigationController?.pushViewController(rvc, animated: true)
    }
    
    @IBAction func back_Button(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
}
