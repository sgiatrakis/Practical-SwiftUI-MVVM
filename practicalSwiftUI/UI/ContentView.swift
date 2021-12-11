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
            if viewModel.isFetched {
                VStack(alignment: .leading, spacing: 4) {
                    Group {
                        Text("USA Population Per Year")
                            .bold()
                            .font(.title2)
                        Text("API used for example: datausa.io")
                    }
                    .padding(.horizontal)
                    List {
                        ForEach((0..<viewModel.data.count)) { index in
                            DataDetailsItem(item: $viewModel.data[index], viewAlert: $viewModel.viewAlert, index: index)
                        }
                    }
                }
            } else {
                Spacer()
                BaseLoader()
                Spacer()
            }
        }
        .navigationBarTitle("Results List")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let vm = ContentViewModel()
        vm.isFetched = true
        
        let dummy = USADataDetails.makeDummy()
        vm.data = [dummy, dummy, dummy]
        
        return ContentView(viewModel: vm)
    }
}
