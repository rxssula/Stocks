//
//  SceneDelegate.swift
//  Stocks
//
//  Created by Rassul Aitkali on 21.03.2024.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        let window = UIWindow(windowScene: windowScene)
        window.makeKeyAndVisible()
        window.rootViewController = createTabbar()
        self.window = window
    }
    
    func createStocksNC() -> UINavigationController {
        let stocksVC = StocksVC()
        stocksVC.title = "Stocks"
        stocksVC.tabBarItem = UITabBarItem(title: "Stocks", image: UIImage(systemName: "dollarsign.circle.fill"), tag: 0)
        
        return UINavigationController(rootViewController: stocksVC)
    }
    
    func createFavoritesNC() -> UINavigationController {
        let favoritesVC = FavoritesVC()
        favoritesVC.title = "Favorites"
        favoritesVC.tabBarItem = UITabBarItem(title: "Favorites", image: UIImage(systemName: "star.fill"), tag: 1)
        
        return UINavigationController(rootViewController: favoritesVC)
    }
    
    func createTabbar() -> UITabBarController {
        let tabbar = UITabBarController()
        tabbar.viewControllers = [createStocksNC(), createFavoritesNC()]
        
        return tabbar
        
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
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

