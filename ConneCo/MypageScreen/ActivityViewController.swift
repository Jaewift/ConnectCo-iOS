//
//  ActivityViewController.swift
//  ConneCo
//
//  Created by jaegu park on 6/17/24.
//

import UIKit

class ActivityViewController: UIViewController {
    
    @IBOutlet weak var SponsorApplyView: UIView!
    @IBOutlet weak var EventApplyView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        SponsorApplyView.alpha = 1
        EventApplyView.alpha = 0
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }

    @IBAction func back_Button(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
}
