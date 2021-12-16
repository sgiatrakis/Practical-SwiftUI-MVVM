//
//  BaseNavItems.swift
//  PracticalSwiftUI
//
//  Created by Lysimachos Giatrakis on 9/12/21.
//

import Foundation
import SwiftUI

struct BaseNavItems: View {
    
    @Binding var viewAlert: BaseAlert

    var body: some View {
        return
            HStack(spacing: 24) {
                Button(action: {
                    self.viewAlert.setActive(message: "Left Nav Icon Tapped. \nCheck BaseTopRightBadges for more details.")
                }) {
                    ZStack {
                        Image("chat-icon")
                        NavIcon(iconValue: "1")
                    }
                }
                Button(action: {
                    self.viewAlert.setActive(message: "Right Nav Icon Tapped. \nCheck BaseTopRightBadges for more details.")
                }) {
                    ZStack {
                        Image("share-icon")
                        NavIcon(iconValue: "2")
                    }
                }
            }.padding(4)
    }

    
}

struct NavIcon: View {
    
    var iconValue: String
    
    var body: some View {
        Group {
            Capsule()
                .fill(Color.ui.primaryGreen)
            Text((iconValue))
                .foregroundColor(Color.white)
                .font(.system(size:14))
                .bold()
        }.frame(width: 22, height: 22)
            .offset(x: 11, y: -11)
    }
    
}


struct BaseNavItems_Previews: PreviewProvider {
    static var previews: some View {
        return BaseNavItems(viewAlert: .constant(BaseAlert()))
    }
}
