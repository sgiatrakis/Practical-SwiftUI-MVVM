//
//  ContentViewModel.swift
//  PracticalSwiftUI
//
//  Created by Lysimachos Giatrakis on 9/12/21.
//

import Foundation

class ContentViewModel {
    
    public func fetchUSAData() {
        Repository.shared.fetchUSAData {  [weak self] data, error in
            guard let self = self else { return }
            
            // End Loading
//            self.isFetched = true
            
            if let error = error {
//                self.viewAlert.setActive(message: error.localizedDescription)
                return
            }
            
            guard let safeData = data else {
                // print msg
                return
            }
            
            print("Safe Data \(safeData)")
        }
    }
    
}
