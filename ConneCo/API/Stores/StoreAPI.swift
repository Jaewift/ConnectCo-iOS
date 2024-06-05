//
//  StoreAPI.swift
//  ConneCo
//
//  Created by jaegu park on 5/21/24.
//

import Foundation
import Alamofire

struct StoreModel:Encodable {
    var storeImages:[String?]
    var request:[StoreInfo]
}

struct StoreInfo:Encodable {
    var name:String?
    var address:String?
    var storeNumber:String?
    var operatingTime:String?
    var description:String?
}

class APIStorePost {
    static let instance = APIStorePost()
    
    func SendingPostReborn(parameters: StoreModel, handler: @escaping (_ result: StoreResultModel)->(Void)) {
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
                    
                    let jsonresult = try JSONDecoder().decode(StoreResultModel.self, from: data!)
                    handler(jsonresult)
                    print(jsonresult)
                } catch let DecodingError.dataCorrupted(context) {
                    print(context)
                } catch let DecodingError.keyNotFound(key, context) {
                    print("Key '\(key)' not found:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch let DecodingError.valueNotFound(value, context) {
                    print("Value '\(value)' not found:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch let DecodingError.typeMismatch(type, context)  {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    print("error: ", error)
                }
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
}

struct StoreResultModel: Codable {
    var isSuccess:Bool
    var code:Int
    var message:String
    var result:StoreResult
}

struct StoreResult: Codable {
    var storeId:Int
}
