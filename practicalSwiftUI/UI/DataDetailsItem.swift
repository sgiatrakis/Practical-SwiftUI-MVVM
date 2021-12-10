//
//  DataDetailsItem.swift
//  PracticalSwiftUI
//
//  Created by Lysimachos Giatrakis on 10/12/21.
//

import SwiftUI
import Kingfisher

struct DataDetailsItem: View {
    
    var item: USADataDetails
    let photoURL = "https://picsum.photos/80/80"
    var index = 0
    
    var body: some View {
        HStack (spacing: 20) {
            // Just a Kingfisher trick in order to get non-cached images
            KFImage.url(URL(string: photoURL + "?v\(index)"))
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
            }
            Spacer()
        }
    }
}

struct DataDetailsItem_Previews: PreviewProvider {
    static var previews: some View {
        var dummyData = USADataDetails()
        dummyData.nation = "United States"
        dummyData.year = "2021"
        dummyData.population = 328239523
        
        return DataDetailsItem(item: dummyData)
    }
}
