//
//  ApplyEventViewController.swift
//  ConneCo
//
//  Created by jaegu park on 6/17/24.
//

import UIKit

class ApplyEventViewController: UIViewController {
    
    @IBOutlet weak var newApplyView: UIView!
    @IBOutlet weak var CompleteApplyView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        newApplyView.alpha = 1
        CompleteApplyView.alpha = 0
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
