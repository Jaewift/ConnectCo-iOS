//
//  MyEventDetailViewController.swift
//  ConneCo
//
//  Created by jaegu park on 6/23/24.
//

import UIKit

class MyEventDetailViewController: UIViewController {

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
    
    @IBAction func back_Button(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
}
