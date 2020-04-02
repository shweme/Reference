//
//  CatalogView.swift
//  Reference
//
//  Created by Shweta Mehta on 20/3/20.
//  Copyright © 2020 Mobile Application Development. All rights reserved.
//

import SwiftUI

struct MasterView: View {
    @ObservedObject var ppl : FavePeople
    var body : some View {
        List {
            ForEach(ppl.pplArray)  { item in
                NavigationLink(destination: DetailView(ppl: item)){
                    RowItem(rowPerson: item)
                }
            }.onDelete {indices in self.ppl.remove(indices)}
        }.frame(width: 420.0)
    }
}

//struct CatalogView_Previews: PreviewProvider {
//    static var previews: some View {
//        CatalogView(ppl: FavePeople.pplArray[(img: "Aang", name: "Aang", actor: "Zach Tyler", nation: "Air Nomad", powers: "everything", notes: ""), People(img: "Katara", name: "Katara", actor: "Mae Whitman", nation: "Southern Water Tribe", powers: "Water/Ice bending, blood bending", notes: ""), People(img: "Sokka", name: "Sokka", actor: "Jack De Sena", nation: "Southern Water Tribe", powers: "None", notes: ""), People(img: "Toph", name: "Toph", actor: "Michaela Murphy", nation: "Earth", powers: "Earth Bending, Metal Bending", notes: ""), People(img: "Zuko", name: "Zuko", actor: "Dante Basco", nation: "Fire Nation", powers: "Fire Bending, Lightning Bending", notes: ""), People(img: "Azula", name: "Azula", actor: "Grey Griffin", nation: "Fire Nation", powers: "Fire bending, Lightning bending", notes: ""), People(img: "Iroh", name: "Uncle Iroh/ Dragon of the West", actor: "Mako Iwamasu", nation: "Fire Nation", powers: "Fire Bending, Lightning bending", notes: "")])
//    }
//}
