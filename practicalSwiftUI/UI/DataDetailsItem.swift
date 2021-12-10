//
//  DataDetailsItem.swift
//  PracticalSwiftUI
//
//  Created by Lysimachos Giatrakis on 10/12/21.
//

import SwiftUI
import Kingfisher

struct DataDetailsItem: View {
    
    // Bindings
    @Binding var item: USADataDetails
    @Binding var viewAlert: BaseAlert
    
    var index = 0
    let photoURL = "https://picsum.photos/80/80"
    
    var body: some View {
        HStack (spacing: 20) {
            // Just a Kingfisher trick in order to get non-cached images
            KFImage.url(URL(string: photoURL + "?v\(index)"))
                .placeholder { Image("placeholder") }
                .clipShape(Circle())
                .frame(width: 80, height: 80)
            VStack(alignment: .leading, spacing: 8) {
                HStack {
                    Text("Year:")
                        .bold()
                    Text(item.year)
                    Spacer()
                }.font(.title2)
                Text("Population: " + String(format: "%.0f", item.population))
                BaseTextField(placeHolder: "Type your notes", textLimit: 12, safetyCheck: .MoreThanOneCharacter, viewAlert: $viewAlert, bindedText: $item.notes)
            }
            Spacer()
        }
    }
}

struct DataDetailsItem_Previews: PreviewProvider {
    static var previews: some View {
        let dummyData = USADataDetails.makeDummy()
        return DataDetailsItem(item: .constant(dummyData), viewAlert: .constant(BaseAlert()), index: 1)
    }
}
