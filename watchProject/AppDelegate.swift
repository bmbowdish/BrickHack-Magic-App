//
//  AppDelegate.swift
//  watchProject
//
//  Created by Braden Bowdish on 1/22/18.
//  Copyright © 2018 Braden Bowdish. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        let tabBarController = window?.rootViewController as! UITabBarController
        let diceVC = tabBarController.viewControllers![0] as! DiceViewController
        let coinVC = tabBarController.viewControllers![1] as! CoinViewController
        let lifeVC = tabBarController.viewControllers![2] as! LifeViewController
        let settingsVC = tabBarController.viewControllers![3] as! SettingsViewController
        
        let globalPrefs = Preferences()
        settingsVC.globalPrefs = globalPrefs
        diceVC.globalPrefs = globalPrefs
        lifeVC.globalPrefs = globalPrefs
        coinVC.globalPrefs = globalPrefs
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

