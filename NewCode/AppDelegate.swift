//
//  AppDelegate.swift
//  NewCode
//
//  Created by Michael Vilabrera on 12/15/14.
//  Copyright (c) 2014 Giving Tree. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        var mashableViewController = ViewController03()
        var navController = UINavigationController(rootViewController: mashableViewController)
        window = UIWindow(frame: UIScreen.mainScreen().bounds)
        window?.backgroundColor = UIColor.whiteColor()
        
        window?.rootViewController = navController
        window?.makeKeyAndVisible()
        
        return true
    }

}

