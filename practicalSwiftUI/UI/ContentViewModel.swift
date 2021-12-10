//
//  ContentViewModel.swift
//  PracticalSwiftUI
//
//  Created by Lysimachos Giatrakis on 9/12/21.
//

import Foundation

class ContentViewModel: BaseViewModel {
    
    @Published var data = [USADataDetails]()
    
    override init() {
        super.init()
        // Even though it's a real API Call, just for exhibition reasons a small delay added for the View's Loader to be observable.
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            self.fetchUSAData()
          }
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
            
            self.data = safeData
        }
    }
    
}
