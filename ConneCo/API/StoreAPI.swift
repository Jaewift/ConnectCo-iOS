//
//  StoreAPI.swift
//  ConneCo
//
//  Created by jaegu park on 5/21/24.
//

import Foundation
import Alamofire

struct RebornModel:Encodable {
    var storeIdx:Int
    var productName:String?
    var productGuide:String?
    var productComment:String?
    var productImg:String?
    var productLimitTime:String?
    var productCnt:Int
}

class APIHandlerPost {
    static let instance = APIHandlerPost()
    
    func SendingPostReborn(parameters: RebornModel, handler: @escaping (_ result: RebornresultModel)->(Void)) {
        let url = APIConstants.storeURL
        let headers:HTTPHeaders = [
            "content-type": "application/json"
        ]
        
        AF.request(url, method: .post, parameters: parameters, encoder: JSONParameterEncoder.default, headers: headers).response { responce in
            switch responce.result {
            case .success(let data):
                print(String(decoding: data!, as: UTF8.self))
                do {
                    let json = try JSONSerialization.jsonObject(with: data!, options: .fragmentsAllowed)
                    print(json)
                    
                    let jsonresult = try JSONDecoder().decode(RebornresultModel.self, from: data!)
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

struct RebornresultModel: Codable {
    var isSuccess:Bool
    var code:Int
    var message:String
    var result: RebornResult
}

struct RebornResult: Codable {
    var rebornIdx:Int
}
