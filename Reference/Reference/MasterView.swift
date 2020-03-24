//
//  MasterView.swift
//  Reference
//
//  Created by Shweta Mehta on 17/3/20.
//  Copyright © 2020 Mobile Application Development. All rights reserved.
//

import SwiftUI
struct MasterView: View { //Master view
    var ppl : [People]
    var body: some View {
        NavigationView {
            CatalogView(ppl: ppl)
                .navigationBarTitle("The Last Airbender", displayMode: .automatic)
//                .navigationBarItems(
//                    trailing:
//                        Button(
//                            action: { print("Adding character profile") },
//                            label: { Text("+").font(.largeTitle) }
//                        )
//                )
        }
    }
}

struct Catalog_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            Text("The Last Airbender")
                .navigationBarTitle(Text("The Last Airbender"), displayMode: .automatic)
//                .navigationBarItems(
//                    trailing:
//                        Button(
//                            action: { print("Adding a character") },
//                            label: { Text("+").font(.largeTitle)}
//                        )
//                )
        }
    }
}
