//
//  CatalogView.swift
//  Reference
//
//  Created by Shweta Mehta on 20/3/20.
//  Copyright © 2020 Mobile Application Development. All rights reserved.
//

import SwiftUI

struct CatalogView: View {
    var ppl : [People]
    var body : some View {
        List(0 ..< ppl.count) { item in
            NavigationLink(destination: ContentView(ppl: self.ppl[item])){
                Image(self.ppl[item].img)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 100, alignment: .leading)
                Text(self.ppl[item].name)
                    .frame(width: 150, height: 100, alignment: .leading)
                Text(self.ppl[item].actor)
                    .foregroundColor(Color.gray)
                    .frame(width: 100, height: 100, alignment: .trailing)
            }
        }
        .frame(width: 420.0)
    }
}


