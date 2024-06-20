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
}
