//
//  StartingView.swift
//  PracticalSwiftUI
//
//  Created by Lysimachos Giatrakis on 9/12/21.
//

import SwiftUI

struct StartingView: View {
    
    
    var body: some View {
        NavigationView {
            BaseView {
                VStack {
                    NavigationLink(destination: ContentView()) {
                        Text("Show Results List")
                    }
                    .navigationTitle("SwiftUI MVVM")
                }
            }
        }
    }
}

struct StartingView_Previews: PreviewProvider {
    static var previews: some View {
        StartingView()
    }
}
