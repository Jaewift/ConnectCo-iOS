//
//  EventPickAPI.swift
//  ConneCo
//
//  Created by jaegu park on 5/21/24.
//

import Foundation
import Alamofire

struct EventPickModel:Encodable {
    var eventId:String?
}

class APIEventPickPost {
    static let instance = APIEventPickPost()
    
    func SendingPostReborn(eventId: String, parameters: EventPickModel, handler: @escaping (_ result: EventPickResultModel)->(Void)) {
        let url = APIConstants.eventURL + "/\(String(eventId))/like"
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
                    
                    let jsonresult = try JSONDecoder().decode(EventPickResultModel.self, from: data!)
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

struct EventPickResultModel: Codable {
    var isSuccess:Bool
    var code:Int
    var message:String
    var result:EventPickResult
}

struct EventPickResult: Codable {
    var eventId:String
    var memberId:String
}
