//
//  Network.swift
//  PracticalSwiftUI
//
//  Created by Lysimachos Giatrakis on 9/12/21.
//

import Foundation
import Alamofire

public typealias usaDataResponse = (USAData?, Error?) -> Void

class Network {
    
    public static let shared = Network()
    
    public func fetchUSAData(completion: @escaping usaDataResponse) {
        let requestBuilder = RequstBuilder.fetchUSAData
        AF.request(requestBuilder).responseJSON { response in
            switch response.result {
            case .success(_ ):
                do {
                    let result = try JSONDecoder().decode(USAData.self, from: response.data!)
                    completion(result, nil)
                } catch let translationError {
                    print("Fetch USA Data.\(#function) error:", translationError)
                    let error = NSError(domain:"", code:400, userInfo:[ NSLocalizedDescriptionKey: "API USA Data - Response Translation Error"])
                    completion(nil, error)
                }
                
            case .failure(let error):
                let error = NSError(domain:"", code:400, userInfo:[ NSLocalizedDescriptionKey: error])
                completion(nil, error)
            }
        }
    }
    
}
