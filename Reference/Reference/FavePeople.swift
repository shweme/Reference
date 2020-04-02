//
//  FavePeople.swift
//  Reference
//
//  Created by Shweta Mehta on 31/3/20.
//  Copyright © 2020 Mobile Application Development. All rights reserved.
//

import Foundation


class FavePeople : ObservableObject, Identifiable{
    
    //pplArray stores an array of instances of class People
    @Published var pplArray = [People]()
    
    //this function inserts the supplied member into the pplArray
    func add(_ add : People) {
        self.pplArray.insert(add, at: 0)
    }
    
    //this function deletes the member at given index from pplArray
    func remove(_ indexsets : IndexSet) {
        self.pplArray.remove(atOffsets: indexsets)
        print(pplArray)
    }
}
