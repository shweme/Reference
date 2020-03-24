//
//  ContentView.swift
//  Reference
//
//  Created by Shweta Mehta on 13/3/20.
//  Copyright © 2020 Mobile Application Development. All rights reserved.
//


import SwiftUI

struct ContentView: View { //Detail view
    @State private var text: String = ""
    var ppl: People
    var name: String = ""
    var body: some View {
        ScrollView(.vertical){
            VStack(alignment: .leading) {
                Image(ppl.img)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 350, height: 350, alignment: .center)
                    .multilineTextAlignment(.center)
                HStack {
                    Text("Name:\t\t")
                        .font(.body)
                        .fontWeight(.medium)
                        .foregroundColor(Color(red: 0.23, green: 0.23, blue: 0.23, opacity: 1.0))
                    Text(ppl.name)
                        .font(.body)
                        .fontWeight(.medium)
                        .foregroundColor(Color(red: 0.23, green: 0.23, blue: 0.23, opacity: 1.0))
                        .multilineTextAlignment(.leading)
                }
                HStack {
                    Text("Nation:\t")
                        .font(.body)
                        .fontWeight(.medium)
                        .foregroundColor(Color(red: 0.23, green: 0.23, blue: 0.23, opacity: 1.0))
                    Text(ppl.nation)
                        .font(.body)
                        .fontWeight(.medium)
                        .foregroundColor(Color(red: 0.23, green: 0.23, blue: 0.23, opacity: 1.0))
                        .multilineTextAlignment(.leading)
                }
                HStack(alignment: .top) {
                    Text("Powers:\t")
                        .font(.body)
                        .fontWeight(.medium)
                        .foregroundColor(Color(red: 0.23, green: 0.23, blue: 0.23, opacity: 1.0))
                    Text(ppl.powers)
                        .font(.body)
                        .fontWeight(.medium)
                        .foregroundColor(Color(red: 0.23, green: 0.23, blue: 0.23, opacity: 1.0))
                        .multilineTextAlignment(.leading)
                }
                HStack {
                    Text("Voiced by:\t")
                        .font(.body)
                        .fontWeight(.medium)
                        .foregroundColor(Color(red: 0.23, green: 0.23, blue: 0.23, opacity: 1.0))
                    Text(ppl.actor)
                        .font(.body)
                        .fontWeight(.medium)
                        .foregroundColor(Color(red: 0.23, green: 0.23, blue: 0.23, opacity: 1.0))
                        .multilineTextAlignment(.leading)
                }
                HStack{
                    Text("Notes:\t\t")
                    TextField("Insert text here", text: $text)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }
                
            } .frame(width: 380, alignment: .center )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(ppl: People(img: "Katara", name: "Katara", actor: "Mae Whitman", nation: "Southern Water Tribe", powers: "Water/Ice bending, blood bending"))
    }
}
