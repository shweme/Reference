//
//  ContentView.swift
//  Reference
//
//  Displays all information of the character user clicks on in Master View
//
//  Created by Shweta Mehta on 13/3/20.
//  Copyright © 2020 Mobile Application Development. All rights reserved.
//


import SwiftUI

struct ContentView: View { //Traditionally named DetailView
    @State var ppl: People //singular instance of People containing data of character
    var body: some View {
        ScrollView(.vertical){ //To enable scrolling on portrait and landscape orientation
            VStack(alignment: .leading) {
                Image(ppl.img)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 350, height: 350, alignment: .center)
                    .multilineTextAlignment(.center)
                HStack { //contains fixed field name and referenced field name of character
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
                HStack { //contains fixed field nation and referenced field native home of character
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
                HStack(alignment: .top) { //contains fixed field powers and referenced field powers of character
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
                HStack { //contains fixed field voiced by and referenced field name of character's voice actor
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
                    TextField("Insert text here", text: $ppl.notes)//binding placeholder text to retain changes through navigation
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }
                
            } .frame(width: 380, alignment: .center )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(ppl: People(img: "Katara", name: "Katara", actor: "Mae Whitman", nation: "Southern Water Tribe", powers: "Water/Ice bending, blood bending", notes: ""))
    }
}
