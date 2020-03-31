//
//  FavePeople.swift
//  Reference
//
//  Created by Shweta Mehta on 31/3/20.
//  Copyright © 2020 Mobile Application Development. All rights reserved.
//

import Foundation


class FavePeople : ObservableObject, Identifiable{
    @Published var pplArray = [People]()
//    init() {
//        self.pplArray = []
//    }
    
    func add(_ add : People) {
        self.pplArray.insert(add, at: 0)
    }
    
    func remove(_ indexsets : IndexSet) {
        self.pplArray.remove(atOffsets: indexsets)
        print(pplArray)
    }
}
