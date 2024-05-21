//
//  EventAPI.swift
//  ConneCo
//
//  Created by jaegu park on 5/21/24.
//

import Foundation
import Alamofire

struct EventModel:Encodable {
    var eventImages:[String?]
    var request:[EventInfo]
}

struct EventInfo:Encodable {
    var organizationName:String?
    var address:String?
    var name:String?
    var description:String?
    var priorityTarget:String?
    var benefitTarget:String?
    var notification:String?
    var expiredAt:Date?
    var thumbnail:String?
}

class APIEventPost {
    static let instance = APIEventPost()
    
    func SendingPostReborn(parameters: EventModel, handler: @escaping (_ result: EventResultModel)->(Void)) {
        let url = APIConstants.eventURL
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
                    
                    let jsonresult = try JSONDecoder().decode(EventResultModel.self, from: data!)
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

struct EventResultModel: Codable {
    var isSuccess:Bool
    var code:Int
    var message:String
    var result:EventResult
}

struct EventResult: Codable {
    var eventId:Int
}
