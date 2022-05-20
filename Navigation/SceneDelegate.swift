//
//  SceneDelegate.swift
//  Navigation
//
//  Created by Fanil_Jr on 17.05.2022.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        window = UIWindow(frame: windowScene.coordinateSpace.bounds)
        window?.windowScene = windowScene
        window?.rootViewController = createTabBarController()
        window?.makeKeyAndVisible()
        
    
    }
    
    func createTabBarController() -> UITabBarController {
        let tabBarController                      = UITabBarController()
     // UITabBar.appearance().backgroundColor     = .red
        UITabBar.appearance().tintColor           = .black
        UITabBar.setTransparentTabbar()
        UIBarButtonItem.appearance().tintColor    = .black
        tabBarController.viewControllers          = [createFeedViewController(),createProfileViewController()]
        
        return tabBarController
        
    }
    
    func createFeedViewController() -> UINavigationController {
        let feedViewController                    = FeedViewController()
        feedViewController.title                  = "Лента"
        feedViewController.navigationController?.navigationBar.barTintColor = UIColor.red
        feedViewController.tabBarItem             = UITabBarItem(title: "Лента", image: UIImage(systemName: "doc.richtext"), tag: 0)
        
        return UINavigationController(rootViewController: feedViewController)
    }
    
    func createProfileViewController() -> UINavigationController {
        let profileViewController                 = ProfileViewController()
        profileViewController.title               = "Профиль"
        profileViewController.tabBarItem          = UITabBarItem(title: "Профиль", image: UIImage(systemName: "person.circle"), tag: 1)

        return UINavigationController(rootViewController: profileViewController)
    }

    func sceneDidDisconnect(_ scene: UIScene) {
       
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        
    }

    func sceneWillResignActive(_ scene: UIScene) {
        
    }

    func sceneWillEnterForeground(_ scene: UIScene) {

    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        
    }

}

