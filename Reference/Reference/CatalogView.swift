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


struct CatalogView_Previews: PreviewProvider {
    static var previews: some View {
        CatalogView(ppl: [People(img: "Aang", name: "Aang", actor: "Zach Tyler", nation: "Air Nomad", powers: "everything"), People(img: "Katara", name: "Katara", actor: "Mae Whitman", nation: "Southern Water Tribe", powers: "Water/Ice bending, blood bending"), People(img: "Sokka", name: "Sokka", actor: "Jack De Sena", nation: "Southern Water Tribe", powers: "None"), People(img: "Toph", name: "Toph", actor: "Michaela Murphy", nation: "Earth", powers: "Earth Bending, Metal Bending"), People(img: "Zuko", name: "Zuko", actor: "Dante Basco", nation: "Fire Nation", powers: "Fire Bending, Lightning Bending"), People(img: "Azula", name: "Azula", actor: "Grey Griffin", nation: "Fire Nation", powers: "Fire bending, Lightning bending"), People(img: "Iroh", name: "Uncle Iroh/ Dragon of the West", actor: "Mako Iwamasu", nation: "Fire Nation", powers: "Fire Bending, Lightning bending")])
    }
}
