//
//  ContentView.swift
//  PracticalSwiftUI
//
//  Created by Lysimachos Giatrakis on 6/12/21.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = ContentViewModel()
    
    var body: some View {
        BaseView(viewAlert: $viewModel.viewAlert) {
            VStack(alignment: .leading, spacing: 4) {
                Text("Hello World")
            }.padding(.horizontal)
        }.navigationBarTitle("Results List")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
