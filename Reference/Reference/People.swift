//
//  People.swift
//  Reference
//
//  The model that the Reference app will use.
//
//  Created by Shweta Mehta on 13/3/20.
//  Copyright © 2020 Mobile Application Development. All rights reserved.
//

import SwiftUI
import Foundation

class People : ObservableObject, Identifiable {
    
    @Published var imgUrl : String? //stores the url of the image user MIGHT want to download
    
    //img allows the entered url to be converted to an Image directly without
    //having to call imgDownload() everytime a picture needs to be displayed
    var img: Image {
        if let u = imgUrl {
            return imgDownload(u)
        } else {
            return Image("Default")
        }
    }
    
    //purely character related information for displaying, all stored as Strings
    @Published var name: String //Character's name
    @Published var actor : String //The voice actor for the above character
    @Published var nation: String //The nation said character hails from
    @Published var powers: String //The skills and bending powers of character
    @Published var notes: String //Any notes the user would like to add
    
    
    //initialiser for all instance variables of the People class
    init(imgUrl: String?, name: String, actor: String, nation: String, powers: String, notes: String){
        self.imgUrl = imgUrl
        self.name = name
        self.actor = actor
        self.nation = nation
        self.powers = powers
        self.notes = notes
    }
}
