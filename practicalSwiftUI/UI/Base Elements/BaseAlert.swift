//
//  BaseAlert.swift
//  PracticalSwiftUI
//
//  Created by Lysimachos Giatrakis on 9/12/21.
//

import Foundation

struct BaseAlert {
    
    public var show: Bool {
        didSet {
            /// When the alert is dismissed, the bound property is automatically set to false
            if !show { setEmptyMsg() }
        }
    }
    
    private (set) var message: String
    
    init() {
        self.show = false
        self.message = ""
    }

    public mutating func setActive(message: String) {
        self.show = true
        self.message = message
    }

    private mutating func setEmptyMsg() {
        self.message = ""
    }
    
}
