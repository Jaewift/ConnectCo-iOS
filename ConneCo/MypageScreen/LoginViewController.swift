//
//  LoginViewController.swift
//  ConneCo
//
//  Created by jaegu park on 5/1/24.
//

import UIKit
import KakaoSDKAuth
import KakaoSDKUser

class LoginViewController: UIViewController {
    
    @IBOutlet weak var kakaoLogin: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        kakaoLogin.addTarget(self, action: #selector(kakao_Tapped), for: .touchUpInside)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    
    @IBAction func Login_Tapped(_ sender: Any) {
        guard let rvc = self.storyboard?.instantiateViewController(withIdentifier: "MypageVC") as? MypageViewController else {return}
        
        self.navigationController?.pushViewController(rvc, animated: true)
    }
    
    @objc func kakao_Tapped() {
        UserApi.shared.loginWithKakaoTalk {(oauthToken, error) in
            if let error = error {
                print(error)
            }
            else {
                print("loginWithKakaoTalk() success.")
                
                //do something
                _ = oauthToken
            }
        }
    }
    
}
