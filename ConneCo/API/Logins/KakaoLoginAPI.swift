//
//  KakaoLoginAPI.swift
//  ConneCo
//
//  Created by jaegu park on 5/21/24.
//

import Foundation
import Alamofire

struct KakaoModel:Encodable {
    var accessToken:String?
}

class APIKakaoPost {
    static let instance = APIKakaoPost()
    
    func SendingPostReborn(token: String, parameters: KakaoModel, handler: @escaping (_ result: KakaoResultModel)->(Void)) {
        let url = APIConstants.loginURL + "/kakao"
        let headers:HTTPHeaders = [
            "content-type": "application/json",
            "X-ACCESS-TOKEN": "\(token)"
        ]
        
        AF.request(url, method: .post, parameters: parameters, encoder: JSONParameterEncoder.default, headers: headers).response { responce in
            switch responce.result {
            case .success(let data):
                print(String(decoding: data!, as: UTF8.self))
                do {
                    let json = try JSONSerialization.jsonObject(with: data!, options: .fragmentsAllowed)
                    print(json)
                    
                    let jsonresult = try JSONDecoder().decode(KakaoResultModel.self, from: data!)
                    handler(jsonresult)
                    print(jsonresult)
                } catch {
                    print(error.localizedDescription)
                }
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
}

struct KakaoResultModel: Codable {
    var isSuccess:Bool
    var code:Int
    var message:String
    var result:KakaoResult
}

struct KakaoResult: Codable {
    var memberId:String
    var accessToken:String
    var refreshToken:String
}
