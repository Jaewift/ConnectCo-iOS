//
//  CouponEnrollViewController.swift
//  ConneCo
//
//  Created by jaegu park on 5/16/24.
//

import UIKit

class CouponEnrollViewController: UIViewController, SampleProtocol2 {
    
    @IBOutlet weak var dateTextField: UITextField!
    
    func timeSend(data: String) {
        dateTextField.text = "  \(data)"
    }

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
    
    @IBAction func Date_Tapped(_ sender: Any) {
        guard let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "CouponDateVC") as? CouponDateViewController else { return }
        nextVC.modalPresentationStyle = .overCurrentContext
        nextVC.delegate = self
        self.present(nextVC, animated: false, completion: nil)
    }
    
    @IBAction func back_Button(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
}
