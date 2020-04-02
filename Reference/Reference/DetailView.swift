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

struct DetailView: View { //Traditionally named DetailView
    @ObservedObject var ppl: People //singular instance of People containing data of character
    @State var tUrl: String = "" //temporary variable to hold user-entered URL
    
    var body: some View {
        ScrollView(.vertical){ //To enable scrolling on portrait and landscape orientation
            VStack() {
                
                //Image display and edit field
                ppl.img
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 350, height: 350, alignment: .center)
                    .multilineTextAlignment(.center)
                TextField("Enter url to load picture", text: $tUrl, onCommit: {
                    self.ppl.imgUrl = self.tUrl
                })//binding placeholder text to retain changes through navigation
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .foregroundColor(.gray)
                
                HStack { //contains fixed field name and referenced field name of character
                    Text("Name:\t\t")
                        .font(.body)
                        .fontWeight(.medium)
                        .foregroundColor(Color(red: 0.23, green: 0.23, blue: 0.23))
                    TextField("Character's name", text: $ppl.name)//binding placeholder text to retain changes through navigation
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }
                
                HStack { //contains fixed field nation and referenced field native home of character
                    Text("Nation:\t")
                        .font(.body)
                        .fontWeight(.medium)
                        .foregroundColor(Color(red: 0.23, green: 0.23, blue: 0.23, opacity: 1.0))
                    TextField("Nation character hails from", text: $ppl.nation)//binding placeholder text to retain changes through navigation
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }
                
                HStack { //contains fixed field powers and referenced field powers of character
                    Text("Skills:\t\t")
                        .font(.body)
                        .fontWeight(.medium)
                        .foregroundColor(Color(red: 0.23, green: 0.23, blue: 0.23, opacity: 1.0))
                    TextField("Skills and bending powers", text: $ppl.powers)//binding placeholder text to retain changes through navigation
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                }
                
                HStack { //contains fixed field voiced by and referenced field name of character's voice actor
                    Text("Voiced by:\t")
                        .font(.body)
                        .fontWeight(.medium)
                        .foregroundColor(Color(red: 0.23, green: 0.23, blue: 0.23, opacity: 1.0))
                    TextField("Voice actor for character in TLA", text: $ppl.actor)//binding placeholder text to retain changes through navigation
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }
                
                HStack {
                    Text("Notes:\t\t")
                        .font(.body)
                        .fontWeight(.medium)
                        .foregroundColor(Color(red: 0.23, green: 0.23, blue: 0.23, opacity: 1.0))
                    TextField("Insert text here", text: $ppl.notes)//binding placeholder text to retain changes through navigation
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    TextView(txt: $ppl.notes) //trying to create a multi-line text field
                }
            } .frame(width: UIScreen.main.bounds.width-50, alignment: .center )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(ppl: People(imgUrl: "https://en.wikipedia.org/wiki/Katara_(Avatar:_The_Last_Airbender)#/media/File:Katara.png", name: "Katara", actor: "Mae Whitman", nation: "Southern Water Tribe", powers: "Water/Ice bending, blood bending", notes: ""))
    }
}
