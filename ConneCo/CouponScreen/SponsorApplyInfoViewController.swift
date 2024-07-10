//
//  SponsorApplyInfoViewController.swift
//  ConneCo
//
//  Created by jaegu park on 5/16/24.
//

import UIKit

class SponsorApplyInfoViewController: UIViewController, SampleProtocol5 {
    
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
        
        navigationController?.setNavigationBarHidden(true, animated: false)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        navigationController?.setNavigationBarHidden(false, animated: false)
    }
    
    @IBAction func event_Tapped(_ sender: Any) {
        let something4 = UIStoryboard.init(name: "Event", bundle: nil)
        guard let rvc = something4.instantiateViewController(withIdentifier: "SponsorAskInfoVC") as? SponsorAskInfoViewController else {return}
        
        // 화면이동
        self.navigationController?.pushViewController(rvc, animated: true)
    }
    
    @IBAction func date_Tapped(_ sender: Any) {
        guard let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "SponsorDateVC") as? SponsorDateViewController else { return }
        nextVC.modalPresentationStyle = .overCurrentContext
        nextVC.delegate = self
        self.present(nextVC, animated: false, completion: nil)
    }
    
    @IBAction func back_Button(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
}
