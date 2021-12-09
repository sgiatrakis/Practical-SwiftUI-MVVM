//
//  USAData.swift
//  PracticalSwiftUI
//
//  Created by Lysimachos Giatrakis on 9/12/21.
//

import Foundation

public struct USAData: Decodable {
    
    public var data: [USADataDetails]
    
    private enum CodingKeys: String, CodingKey {
        case data
    }
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        data = try container.decode([USADataDetails].self, forKey: .data)
    }
    
}

public struct USADataDetails: Decodable {
    
    public var nation: String
    public var year: String
    public var population: Double
    
    private enum CodingKeys: String, CodingKey {
        case Nation
        case Year
        case Population
    }
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        nation = try container.decode(String.self, forKey: .Nation)
        year = try container.decode(String.self, forKey: .Year)
        population = try container.decode(Double.self, forKey: .Population)
    }

}
