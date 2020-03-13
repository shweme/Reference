//
//  ContentView.swift
//  Reference
//
//  Created by Shweta Mehta on 13/3/20.
//  Copyright © 2020 Mobile Application Development. All rights reserved.
//


import SwiftUI

struct ContentView: View {
    var chars: Character
    var body: some View {
        VStack {
            Text("TLA Characters")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(Color(red: 0.23, green: 0.23, blue: 0.23, opacity: 1.0))
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            Image(chars.img)
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
                    Text(chars.name)
                        .font(.body)
                        .fontWeight(.medium)
                        .foregroundColor(Color(red: 0.23, green: 0.23, blue: 0.23, opacity: 1.0))
                    Text(chars.nation)
                        .font(.body)
                        .fontWeight(.medium)
                        .foregroundColor(Color(red: 0.23, green: 0.23, blue: 0.23, opacity: 1.0))
                    Text(chars.powers)
                        .font(.body)
                        .fontWeight(.medium)
                        .foregroundColor(Color(red: 0.23, green: 0.23, blue: 0.23, opacity: 1.0))
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(chars: Character)
    }
}
