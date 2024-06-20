//
//  KakaoAuth.swift
//  ConneCo
//
//  Created by jaegu park on 6/20/24.
//

import Foundation
import Combine
import KakaoSDKAuth
import KakaoSDKUser

class KakaoAuthVM: ObservableObject {
    
    var subscriptions = Set<AnyCancellable>()
    
    func handleKakaLogin() {
        print("KakaoAuthVM - handleKakaoLogin() called")
        
        // 카카오톡 실행 가능 여부 확인
        if (UserApi.isKakaoTalkLoginAvailable()) {
            // 카카오 앱으로 로그인
            UserApi.shared.loginWithKakaoTalk {(oauthToken, error) in
                if let error = error {
                    print(error)
                }
                else {
                    // 카카오 계정으로 로그인
                    print("loginWithKakaoTalk() success.")
                    
                    let idToken = oauthToken.idToken
                    let accessToken = oauthToken.accessToken

                    //do something
                    _ = oauthToken
                }
            }
        }else {// 카카오톡 미설치 상태 -> 웹으로 이동해 로그인
            UserApi.shared.loginWithKakaoAccount {(oauthToken, error) in
                    if let error = error {
                        print(error)
                    }
                    else {
                        print("loginWithKakaoAccount() success.")

                        //do something
                        _ = oauthToken
                    }
                }
        }
    }
    
    func kakaoLogOut() {
        UserApi.shared.logout {(error) in
            if let error = error {
                print(error)
            }
            else {
                print("logout() success.")
            }
        }
    }
}
