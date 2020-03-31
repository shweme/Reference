//
//  MasterView.swift
//  Reference
//
//  Created by Shweta Mehta on 17/3/20.
//  Copyright © 2020 Mobile Application Development. All rights reserved.
//

import SwiftUI
struct ContentView: View { //Master view
    @ObservedObject var ppl : FavePeople
    var body: some View {
        NavigationView {
            MasterView(ppl: ppl)
                .navigationBarTitle("The Last Airbender", displayMode: .automatic)
                .navigationBarItems(
                    leading: EditButton(),
                    trailing:
                        Button(
                            action: {
                                withAnimation { self.ppl.add(People(img: "Default", name: "", actor: "", nation: "", powers: "", notes: "")); print(self.ppl)}
                        },
                            label: { Text("+").font(.largeTitle) }
                        )
                )
        }
    }
}

struct Catalog_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            Text("The Last Airbender")
                .navigationBarTitle(Text("The Last Airbender"), displayMode: .automatic)
                .navigationBarItems(
                    leading: EditButton(),
                    trailing:
                        Button(
                            action: { print("Adding a character") },
                            label: { Text("+").font(.largeTitle)}
                        )
                )
        }
    }
}
