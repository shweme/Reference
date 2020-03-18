//
//  Catalog.swift
//  Reference
//
//  Created by Shweta Mehta on 17/3/20.
//  Copyright © 2020 Mobile Application Development. All rights reserved.
//

import SwiftUI

//var names : [String] = ["Aang", "Katara", "Toph", "Sokka", "Zuko", "Iroh", "Azula"]

struct Catalog: View { //Master view
    var ppl : [People]
    var body: some View {
        VStack {
            Text("The Last Airbender Characters")
                .font(.title)
            Divider().background(Color.black)
            List(0 ..< ppl.count) { item in
                HStack {
                    Image(self.ppl[item].img)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100, height: 100, alignment: .leading)
                    Text(self.ppl[item].name)
                    .frame(width: 150, height: 100, alignment: .leading)
                    Text("Subtitle >")
                        .foregroundColor(Color.gray)
                        .frame(width: 100, height: 100, alignment: .trailing)
                }
            }
            .frame(width: 420.0)
        }
    }
}

//struct Catalog_Previews: PreviewProvider {
//    static var previews: some View {
//        Catalog()
//    }
//}
