//
//  SceneDelegate.swift
//  Reference
//
//  Created by Shweta Mehta on 13/3/20.
//  Copyright © 2020 Mobile Application Development. All rights reserved.
//

import UIKit
import SwiftUI

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    var people: FavePeople = FavePeople() //people will be an array of objects of the class People that is passed to master&detail views

    
    //
    //      Creating objects of class People to populate the app
    //
    
    let Aang = People(imgUrl: "https://www.freepngimg.com/thumb/aang/20265-9-aang-clipart.png", name: "Aang", actor: "Zach Tyler", nation: "Air Nomad", powers: "Air Bending, Water Bending, Earth Bending, Fire Bending, Avatar State", notes: "")
    let Katara = People(imgUrl: "https://i.pinimg.com/474x/a6/c1/f8/a6c1f805b9291500cde3e659d5fd7c10--manga-anime-water.jpg", name: "Katara", actor: "Mae Whitman", nation: "Southern Water Tribe", powers: "Water/Ice Bending, blood bending", notes: "")
    let Sokka = People(imgUrl: "https://upload.wikimedia.org/wikipedia/az/c/cc/Sokka.png", name: "Sokka", actor: "Jack De Sena", nation: "Southern Water Tribe", powers: "Non-bender, but the smartest and most loyal human of Team Avatar", notes: "")
    let Toph = People(imgUrl: "https://imagensemoldes.com.br/wp-content/uploads/2020/02/Avatar-A-Lenda-Aang-Toph-Beifong-PNG-01.png?ezimgfmt=ngcb3/notWebP", name: "Toph", actor: "Michaela Murphy", nation: "Earth", powers: "Earth Bending, inventor of Metal Bending", notes: "")
    let Zuko = People(imgUrl: "https://vignette.wikia.nocookie.net/villains/images/2/23/Principe_zuko_by_yuzumi2000-d6lbrj4.png/revision/latest?cb=20170611234341", name: "Zuko", actor: "Dante Basco", nation: "Fire", powers: "Fire Bending, Lightning Bending", notes: "")
    let Azula = People(imgUrl: "https://vignette.wikia.nocookie.net/heroes-unite/images/a/ac/Azula_Render.png/revision/latest?cb=20190602212102", name: "Azula", actor: "Grey Griffin", nation: "Fire", powers: "Fire Bending, Lightning Bending", notes: "")
    let Iroh = People(imgUrl: "https://camo.githubusercontent.com/ea3facc527ce2cc1acac8482a6ab2fad074a137a/68747470733a2f2f692e696d6775722e636f6d2f666163365a61322e706e67", name: "Uncle Iroh / The Dragon of the West", actor: "Mako Iwamatsu", nation: "Fire", powers: "Fire Bending, Lightning Bending, Tea Making", notes: "")

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
        // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
        // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
        // Create the SwiftUI view that provides the window contents.

        
//        people = [Aang, Katara, Sokka, Toph, Zuko, Azula, Iroh]
        
        people.add(Aang)
        people.add(Katara)
        people.add(Sokka)
        people.add(Toph)
        people.add(Zuko)
        people.add(Azula)
        people.add(Iroh)
        
        let contentView = ContentView(ppl: people) //could be replaced by appending in line 40:... (rootView: MasterView(ppl: people))

        // Use a UIHostingController as window root view controller.
        if let windowScene = scene as? UIWindowScene {
            let window = UIWindow(windowScene: windowScene)
            window.rootViewController = UIHostingController(rootView: contentView)
            self.window = window
            window.makeKeyAndVisible()
        }
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not neccessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}

