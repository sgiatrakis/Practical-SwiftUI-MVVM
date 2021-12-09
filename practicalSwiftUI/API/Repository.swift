//
//  Repository.swift
//  PracticalSwiftUI
//
//  Created by Lysimachos Giatrakis on 9/12/21.
//

import Foundation

final class Repository {
    
    public typealias fetchUSADataResponse = ([USADataDetails]?, Error?) -> Void
    
    private var networkLayer: Network
    
    public static let shared = Repository()
    
    private init() {
        networkLayer = Network()
    }
    
    func fetchUSAData(completion: @escaping fetchUSADataResponse) {
        networkLayer.fetchUSAData() { response, error in
            if let err = error {
                completion(nil, err)
                return
            }
            
            let dataArray = response?.data
            completion(dataArray, nil)
        }
    }
}
