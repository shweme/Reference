//
//  CatalogView.swift
//  Reference
//
//  Creates a list containing all current characters user has in their app
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
            }.onDelete {indices in self.ppl.remove(indices)} //to delete the Person at current instance
        }.frame(width: UIScreen.main.bounds.width-25)
    }
}



struct CatalogView_Previews: PreviewProvider {

    
    static var previews: some View {
        MasterView(ppl: get_faves())
    }
}

//dummy data for the preview
func get_faves() -> FavePeople {
    let faves: FavePeople = FavePeople()
    
    faves.add(People(imgUrl: "Default", name: "Aang", actor: "Zach Tyler", nation: "Air Nomad", powers: "everything", notes: ""))
    
    faves.add(People(imgUrl: "Default", name: "Katara", actor: "Mae Whitman", nation: "Southern Water Tribe", powers: "Water/Ice bending, blood bending", notes: ""))
    
    return faves
}
