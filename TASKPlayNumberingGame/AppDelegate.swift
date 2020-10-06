//
//  AppDelegate.swift
//  TASKPlayNumberingGame
//
//  Created by Tomislav Gelesic on 06/10/2020.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let firstScreen = MainSceneViewController()
        firstScreen.title = "PLAY NUMBERING GAME"
        
        let navigationController = UINavigationController(rootViewController: firstScreen)
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
        
        return true
    }
    
    
}

