//
//  RowItem.swift
//  Reference
//
//  Created by Shweta Mehta on 2/4/20.
//  Copyright © 2020 Mobile Application Development. All rights reserved.
//

import SwiftUI

struct RowItem: View {
    @ObservedObject var rowPerson: People
    var body: some View {
        HStack {
            rowPerson.img
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100, alignment: .leading)
            Text(self.rowPerson.name)
                .frame(width: 150, height: 100, alignment: .leading)
            Text(self.rowPerson.actor)
                .foregroundColor(Color.gray)
                .frame(width: 100, height: 100, alignment: .trailing)

        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        RowItem(rowPerson: People(imgUrl: "Default", name: "Aang", actor: "Zach Tyler", nation: "Air Nomad", powers: "everything", notes: ""))
    }
}
