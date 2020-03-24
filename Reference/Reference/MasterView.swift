//
//  MasterView.swift
//  Reference
//
//  Created by Shweta Mehta on 17/3/20.
//  Copyright © 2020 Mobile Application Development. All rights reserved.
//

import SwiftUI

//var names : [String] = ["Aang", "Katara", "Toph", "Sokka", "Zuko", "Iroh", "Azula"]

struct MasterView: View { //Master view
    var ppl : [People]
    var body: some View {
        NavigationView {
            CatalogView(ppl: ppl)
                .navigationBarTitle("The Last Airbender")
        }
    }
}

struct Catalog_Previews: PreviewProvider {
    static var previews: some View {
        Text("The Last Airbender")
    }
}
