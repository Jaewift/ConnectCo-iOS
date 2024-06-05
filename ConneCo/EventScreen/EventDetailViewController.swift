//
//  EventDetailViewController.swift
//  ConneCo
//
//  Created by jaegu park on 5/15/24.
//

import UIKit

class EventDetailViewController: UIViewController {
    
    @IBOutlet weak var EventImageCV: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        EventImageCV.delegate = self
        EventImageCV.dataSource = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.setNavigationBarHidden(true, animated: false)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        navigationController?.setNavigationBarHidden(false, animated: false)
    }
    
    @IBAction func UniInfo_Tapped(_ sender: Any) {
        guard let rvc = self.storyboard?.instantiateViewController(withIdentifier: "UniVC") as? UniViewController else {return}
        
        self.navigationController?.pushViewController(rvc, animated: true)
    }
    
    @IBAction func back_Tapped(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
}
