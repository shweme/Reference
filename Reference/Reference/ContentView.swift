//
//  MasterView.swift
//  Reference
//
//  CReates the navigation bar for editing the list of characters
//
//  Created by Shweta Mehta on 17/3/20.
//  Copyright © 2020 Mobile Application Development. All rights reserved.
//

import SwiftUI
struct ContentView: View {
    @ObservedObject var ppl : FavePeople //an array of instances of the People class
    var body: some View {
        NavigationView {
            MasterView(ppl: ppl)
                .navigationBarTitle("The Last Airbender", displayMode: .automatic)
                .navigationBarItems(
                    leading: EditButton(),
                    trailing:
                        Button( //button to add a character
                            action: { //adding animation for when a character is added
                                withAnimation { self.ppl.add(People(imgUrl: "Default", name: "", actor: "", nation: "", powers: "", notes: "")); print(self.ppl)}
                        }
                        ) {Image(systemName: "plus")}
                )
            }.navigationViewStyle(StackNavigationViewStyle())
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
