//
//  SceneDelegate.swift
//  NewsApp
//
//  Created by Роман Замолотов on 09.07.2022.
//

import UIKit
import CoreData

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

        func sceneDidEnterBackground(_ scene: UIScene) {
            AppDelegate.sharedAppDelegate.coreDataStack.saveContext()
        }


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
    
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.windowScene = windowScene
        let viewControler = ViewController()
        window?.rootViewController = viewControler
        window?.makeKeyAndVisible()
        
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        
    }

    func sceneWillResignActive(_ scene: UIScene) {
       
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
      
    }

//    func sceneDidEnterBackground(_ scene: UIScene) {
//       
//    }
}

