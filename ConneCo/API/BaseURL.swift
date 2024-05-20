//
//  BaseURL.swift
//  ConneCo
//
//  Created by jaegu park on 5/21/24.
//

import Foundation

struct APIConstants {
    // MARK: - Base URL
    static let baseURL = "http://ec2-15-164-14-114.ap-northeast-2.compute.amazonaws.com:8080"
    
    static let loginURL = baseURL + "/members"
    
    static let eventURL = baseURL + "/events"
    
    static let couponURL = baseURL + "/coupons"
    
    static let storeURL = baseURL + "/stores"
}
