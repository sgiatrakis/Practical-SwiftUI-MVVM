//
//  ContentView.swift
//  PracticalSwiftUI
//
//  Created by Lysimachos Giatrakis on 6/12/21.
//

import SwiftUI

struct ContentView: View {
    
    let vm = ContentViewModel()
    
    var body: some View {
        Text("Hello, world!")
            .padding().onAppear {
                vm.fetchUSAData()
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
