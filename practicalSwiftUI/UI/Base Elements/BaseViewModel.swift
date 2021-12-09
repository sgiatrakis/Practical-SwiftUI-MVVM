//
//  BaseViewModel.swift
//  PracticalSwiftUI
//
//  Created by Lysimachos Giatrakis on 9/12/21.
//

import Foundation
import SwiftUI

/// Be aware of inheritance used for older versions : https://developer.apple.com/forums/thread/677223
/// In this case, you can just remove ObservableObject for following BaseViewModel and declare ContentViewModel as ContentViewModel: BaseViewModel, ObservableObject

class BaseViewModel: ObservableObject {
    
    @Published var isFetched: Bool = false
    @Published var viewAlert = BaseAlert()
    
}
