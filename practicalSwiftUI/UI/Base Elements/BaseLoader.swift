//
//  BaseLoader.swift
//  PracticalSwiftUI
//
//  Created by Lysimachos Giatrakis on 9/12/21.
//

import SwiftUI

struct BaseLoader: View {
    
    var body: some View {
        HStack(spacing: 6) {
            ProgressView()
            Text("Loading...")
                .foregroundColor(Color.gray)
                .font(.system(size: 18))
        }
    }
}
