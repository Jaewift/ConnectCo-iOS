//
//  LoginAPI.swift
//  ConneCo
//
//  Created by jaegu park on 5/21/24.
//

import Foundation
import Alamofire

struct GoogleModel:Encodable {
    var accessToken:String?
}

class APIGooglePost {
    static let instance = APIGooglePost()
    
    func SendingPostReborn(token: String, parameters: GoogleModel, handler: @escaping (_ result: GoogleResultModel)->(Void)) {
        let url = APIConstants.loginURL + "/google"
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
                    
                    let jsonresult = try JSONDecoder().decode(GoogleResultModel.self, from: data!)
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

struct GoogleResultModel: Codable {
    var isSuccess:Bool
    var code:Int
    var message:String
    var result:GoogleResult
}

struct GoogleResult: Codable {
    var memberId:String
    var accessToken:String
    var refreshToken:String
}
