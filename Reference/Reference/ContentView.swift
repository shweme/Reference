//
//  ContentView.swift
//  Reference
//
//  Created by Shweta Mehta on 13/3/20.
//  Copyright © 2020 Mobile Application Development. All rights reserved.
//


import SwiftUI

struct ContentView: View { //Detail view
    var ppl: People
    var body: some View {
        VStack {
            Image(ppl.img)
            HStack {
                //Fixed Information
                VStack(alignment: .leading) {
                    Text("Name:")
                        .font(.body)
                        .fontWeight(.medium)
                        .foregroundColor(Color(red: 0.23, green: 0.23, blue: 0.23, opacity: 1.0))
                    Text("Nation:")
                        .font(.body)
                        .fontWeight(.medium)
                        .foregroundColor(Color(red: 0.23, green: 0.23, blue: 0.23, opacity: 1.0))
                    Text("Powers:")
                        .font(.body)
                        .fontWeight(.medium)
                        .foregroundColor(Color(red: 0.23, green: 0.23, blue: 0.23, opacity: 1.0))
                }
                //Variable Information
                VStack(alignment: .leading ) {
                    Text(ppl.name)
                        .font(.body)
                        .fontWeight(.medium)
                        .foregroundColor(Color(red: 0.23, green: 0.23, blue: 0.23, opacity: 1.0))
                    Text(ppl.nation)
                        .font(.body)
                        .fontWeight(.medium)
                        .foregroundColor(Color(red: 0.23, green: 0.23, blue: 0.23, opacity: 1.0))
                    Text(ppl.powers)
                        .font(.body)
                        .fontWeight(.medium)
                        .foregroundColor(Color(red: 0.23, green: 0.23, blue: 0.23, opacity: 1.0))
                }
            }
            VStack (alignment: .leading) {
                HStack {
                    Text("Name:")
                        .font(.body)
                        .fontWeight(.medium)
                        .foregroundColor(Color(red: 0.23, green: 0.23, blue: 0.23, opacity: 1.0))
                        Spacer()
                    Text(ppl.name)
                        .font(.body)
                        .fontWeight(.medium)
                        .foregroundColor(Color(red: 0.23, green: 0.23, blue: 0.23, opacity: 1.0))
                        .frame(alignment: .leading)
                }
                HStack {
                    Text("Nation:")
                        .font(.body)
                        .fontWeight(.medium)
                        .foregroundColor(Color(red: 0.23, green: 0.23, blue: 0.23, opacity: 1.0))
                    Spacer()
                    Text(ppl.nation)
                        .font(.body)
                        .fontWeight(.medium)
                        .foregroundColor(Color(red: 0.23, green: 0.23, blue: 0.23, opacity: 1.0))
                        .frame(alignment: .leading)
                }
                HStack {
                    Text("Powers:")
                        .font(.body)
                        .fontWeight(.medium)
                        .foregroundColor(Color(red: 0.23, green: 0.23, blue: 0.23, opacity: 1.0))
                    Spacer()
                    Text(ppl.powers)
                        .font(.body)
                        .fontWeight(.medium)
                        .foregroundColor(Color(red: 0.23, green: 0.23, blue: 0.23, opacity: 1.0))
                        .frame(alignment: .leading)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(ppl: People(img: "Katara", name: "Katara", pet: "", nation: "Southern Water Tribe", powers: "Water/Ice bending, blood bending"))
    }
}
