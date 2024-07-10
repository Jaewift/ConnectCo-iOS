//
//  MypageViewController.swift
//  ConneCo
//
//  Created by jaegu park on 4/24/24.
//

import UIKit

class MypageViewController: UIViewController {
    
    @IBOutlet weak var ActivityView: UIView!
    @IBOutlet weak var PickView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        ActivityView.layer.cornerRadius = 10
        ActivityView.clipsToBounds = true
        PickView.layer.cornerRadius = 10
        PickView.clipsToBounds = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    
    @IBAction func Activity_Tapped(_ sender: Any) {
        guard let rvc = self.storyboard?.instantiateViewController(withIdentifier: "ActivityVC") as? ActivityViewController else {return}
        
        self.navigationController?.pushViewController(rvc, animated: true)
    }
    
    @IBAction func Pick_Tapped(_ sender: Any) {
        guard let rvc = self.storyboard?.instantiateViewController(withIdentifier: "MyPickVC") as? MyPickViewController else {return}
        
        self.navigationController?.pushViewController(rvc, animated: true)
    }
}
