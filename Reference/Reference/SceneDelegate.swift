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
    var people: [People] = []

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
        // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
        // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).

        // Create the SwiftUI view that provides the window contents.

        let Aang = People(img: "Aang", name: "Aang", actor: "Zach Tyler", nation: "Air Nomad", powers: "Air Bending, Water Bending, Earth Bending, Fire Bending, Avatar State")
        let Katara = People(img: "Katara", name: "Katara", actor: "Mae Whitman", nation: "Southern Water Tribe", powers: "Water/Ice Bending, blood bending")
        let Sokka = People(img: "Sokka", name: "Sokka", actor: "Jack De Sena", nation: "Southern Water Tribe", powers: "Non-bender, but the smartest and most loyal human of Team Avatar")
        let Toph = People(img: "Toph", name: "Toph", actor: "Michaela Murphy", nation: "Earth", powers: "Earth Bending, inventor of Metal Bending")
        let Zuko = People(img: "Zuko", name: "Zuko", actor: "Dante Basco", nation: "Fire", powers: "Fire Bending, Lightning Bending")
        let Azula = People(img: "Azula", name: "Azula", actor: "Grey Griffin", nation: "Fire", powers: "Fire Bending, Lightning Bending")
        let Iroh = People(img: "Iroh", name: "Uncle Iroh / The Dragon of the West", actor: "Mako Iwamatsu", nation: "Fire", powers: "Fire Bending, Lightning Bending, Tea Making")
        people = [Aang, Katara, Sokka, Toph, Zuko, Azula, Iroh]
        
        let master = MasterView(ppl: people)

        // Use a UIHostingController as window root view controller.
        if let windowScene = scene as? UIWindowScene {
            let window = UIWindow(windowScene: windowScene)
            window.rootViewController = UIHostingController(rootView: master)
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

