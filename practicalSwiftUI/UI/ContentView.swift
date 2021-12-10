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
                    Text("USA Population Per Year")
                        .padding(16)
                    
                    List {
                        ForEach(Array(viewModel.data.enumerated()), id: \.element) { index, item in
                            DataDetailsItem(item: item, index: index)
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
        ContentView()
    }
}
