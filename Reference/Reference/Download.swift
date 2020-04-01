//
//  Download.swift
//  Reference
//
//  Created by Shweta Mehta on 1/4/20.
//  Copyright © 2020 Mobile Application Development. All rights reserved.
//

import Foundation
import SwiftUI

func imgDownload(_ img: String) -> Image {
    guard let imgUrl = try? URL(string: img) else {
        return (Image("Default"))
    }
    guard let imgData = try? Data(contentsOf: imgUrl) else {
        return (Image("Default"))
    }
    guard let uiImg = UIImage(data: imgData) else {
        return (Image("Default"))
    }
    let downloadedImg = Image(uiImage: uiImg)
    return downloadedImg
}


//"https://www.google.com/logos/doodles/2020/dame-jean-macnamaras-121st-birthday-6753651837108336.4-l.png"
