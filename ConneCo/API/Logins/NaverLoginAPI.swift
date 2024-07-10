//
//  NaverLoginAPI.swift
//  ConneCo
//
//  Created by jaegu park on 5/21/24.
//

import Foundation
import Alamofire

struct NaverModel:Encodable {
    var accessToken:String?
}

class APINaverPost {
    static let instance = APINaverPost()
    
    func SendingPostReborn(token: String, parameters: NaverModel, handler: @escaping (_ result: NaverResultModel)->(Void)) {
        let url = APIConstants.loginURL + "/naver"
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
                    
                    let jsonresult = try JSONDecoder().decode(NaverResultModel.self, from: data!)
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

struct NaverResultModel: Codable {
    var isSuccess:Bool
    var code:Int
    var message:String
    var result:NaverResult
}

struct NaverResult: Codable {
    var memberId:String
    var accessToken:String
    var refreshToken:String
}
