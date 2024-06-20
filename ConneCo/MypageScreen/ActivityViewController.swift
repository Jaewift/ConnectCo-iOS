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

}
