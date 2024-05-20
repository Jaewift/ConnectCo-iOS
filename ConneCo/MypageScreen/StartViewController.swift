//
//  StartViewController.swift
//  ConneCo
//
//  Created by jaegu park on 5/3/24.
//

import UIKit

class StartViewController: UIViewController {

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
    
    @IBAction func Start_Tapped(_ sender: Any) {
//        let stb = UIStoryboard(name: "Main", bundle: nil)
        guard let rvc = self.storyboard?.instantiateViewController(withIdentifier: "LoginVC") as? LoginViewController else {return}
        
        self.navigationController?.pushViewController(rvc, animated: true)
    }
}
