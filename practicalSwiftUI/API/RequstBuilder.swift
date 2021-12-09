//
//  RequstBuilder.swift
//  PracticalSwiftUI
//
//  Created by Lysimachos Giatrakis on 9/12/21.
//

import Foundation
import Alamofire


enum RequstBuilder: URLRequestConvertible {
    
    // API - All cases
    case fetchUSAData
    
    private var encoding: ParameterEncoding {
        return URLEncoding.default
    }
    
    private var httpMethod: HTTPMethod {
        return .get
    }
    
    private var path: String {
        switch self {
        case .fetchUSAData:
            // We use the full API path, just for simplicity reasons
            return "data?drilldowns=Nation&measures=Population"
        }
    }
    
    func asURLRequest() throws -> URLRequest {
        
        let apiString = "https://datausa.io/api"
        let url = try apiString.asURL()
        var urlRequest = URLRequest(url: url.appendingPathComponent(path))
        urlRequest.httpMethod = httpMethod.rawValue
        
        switch self {
        case .fetchUSAData:
            return try encoding.encode(urlRequest, with: nil)
        }
        
    }
    
}
