//
//  BaseView.swift
//  PracticalSwiftUI
//
//  Created by Lysimachos Giatrakis on 9/12/21.
//

import Foundation
import SwiftUI

struct BaseView<Content: View>: View {
    
    @Binding var viewAlert: BaseAlert
    
    let content: Content
    var showTopLine: Bool = true
    var showTopRightBadges: Bool = true
    
    /// BaseView initialization. Every func parameter has an initial value for having usage flexibility.
    /// - Parameters:
    ///   - viewAlert: ViewModel's baseAlert
    ///   - showTopLine: Show the top Blue Line or not
    ///   - showTopRightBadges: Show the top right Cart & List badges Line or not
    ///   - content: Additional Content
    init(viewAlert: Binding<BaseAlert> = .constant(BaseAlert()),
         showTopLine: Bool = true,
         showTopRightBadges: Bool = true,
         @ViewBuilder content: () -> Content) {
        self._viewAlert = viewAlert
        self.showTopLine = showTopLine
        self.showTopRightBadges = showTopRightBadges
        self.content = content()
    }
    
    var body: some View {
        ZStack {
            VStack {
                if showTopLine {
                    Divider()
                        .frame(width: .none, height: 3.0)
                        .background(Color.ui.primaryOcean)
                        .padding(.top, 8)
                }
                // Content starts here
                content
            }.frame(minWidth: .none, maxWidth: .infinity, minHeight: .none, maxHeight: .infinity, alignment: .topLeading)
        }
        .navigationBarItems(trailing: showTopRightBadges ? BaseTopRightBadges(viewAlert: $viewAlert) : nil)
        .alert(isPresented: $viewAlert.show) {
            Alert(title: Text("") , message: Text(viewAlert.message))
        }
    }
    
}
