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
            BaseView(showNavItems: false) {
                VStack(spacing: 20) {
                    Group {
                        Text("Next screen will try to demonstrate a practical and simple MVVM pattern.")
                            .bold()
                        Text("In the same time, some base subclassing logic (BaseView, BaseViewModel etc..) has been added as exhibition/example.")
                        Text("Check code and feel free to ask anything or suggest improvements.")
                    }
                    .padding(.horizontal)
                    .frame(minWidth: .none, maxWidth: .infinity, minHeight: .none, maxHeight: .none, alignment: .topLeading)
                    NavigationLink(destination: ContentView()) {
                        Text("Show Results List")
                            .foregroundColor(.white)
                            .padding(10)
                            .background(.blue)
                            .clipShape(Capsule())
                    }
                    .padding(.top, 30)
                    Spacer()
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
