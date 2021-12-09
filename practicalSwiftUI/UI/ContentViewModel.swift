//
//  ContentViewModel.swift
//  PracticalSwiftUI
//
//  Created by Lysimachos Giatrakis on 9/12/21.
//

import Foundation

class ContentViewModel: BaseViewModel {
    
    override init() {
        super.init()
        fetchUSAData()
    }
    
    public func fetchUSAData() {
        Repository.shared.fetchUSAData {  [weak self] data, error in
            guard let self = self else { return }
            
            // End Loading
            self.isFetched = true
            
            // Handle Error
            if let error = error {
                self.viewAlert.setActive(message: error.localizedDescription)
                return
            }
            
            guard let safeData = data else {
                print("Response DTO unwrap error")
                return
            }
            
            print("Safe Data \(safeData)")
        }
    }
    
}
