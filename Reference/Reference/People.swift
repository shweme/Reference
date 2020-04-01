//
//  Characters.swift
//  Reference
//
//  The model that the Reference app will use.
//
//  Created by Shweta Mehta on 13/3/20.
//  Copyright © 2020 Mobile Application Development. All rights reserved.
//

import SwiftUI
import Foundation

//The struct People is the model for this application and all instances of People must include values for an image, name, actor, nation, powers, notes
//struct sPeople {
//    var img : String
//    var name: String
//    var actor : String
//    var nation: String
//    var powers: String
//    var notes: String
//}
//The struct has been abandoned for a mutable class that allows objects to change values even when it's reference changes values


class People : ObservableObject, Identifiable {
    @Published var imgUrl : String?
    var img: Image {
        if let u = imgUrl {
            return imgDownload(u)
        } else {
            return Image("Default")
        }
    }
    //@Published var img : Image?
    @Published var name: String
    @Published var actor : String
    @Published var nation: String
    @Published var powers: String
    @Published var notes: String
    
    init(imgUrl: String?, name: String, actor: String, nation: String, powers: String, notes: String){
        self.imgUrl = imgUrl
        self.name = name
        self.actor = actor
        self.nation = nation
        self.powers = powers
        self.notes = notes
    }
}
