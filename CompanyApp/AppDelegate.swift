//
//  AppDelegate.swift
//  CompanyApp
//
//  Created by Milos Hovjecki on 7/22/17.
//  Copyright © 2017 Hajora. All rights reserved.
//

import UIKit
import Firebase
import FirebaseInstanceID
import FirebaseMessaging

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    // MARK: Custume function for managing notification type and iOS version support


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {

        if #available(iOS 8.0, *) {
            
            let settings: UIUserNotificationSettings = UIUserNotificationSettings(types: [.alert, .badge, .sound], categories: nil)
            application.registerUserNotificationSettings(settings)
            application.registerForRemoteNotifications()
            
        } else {
            
            let types: UIRemoteNotificationType = [.alert, .badge, .sound]
            application.registerForRemoteNotifications(matching: types)
            
        }
        
        // MARK: Firebase App initiated
        
        FirebaseApp.configure()
        
        NotificationCenter.default.addObserver(self, selector: #selector(self.tokenRefreshNotification(notification:)), name: NSNotification.Name.InstanceIDTokenRefresh, object: nil)
        
        Thread.sleep(forTimeInterval: 2) // Launch screen manual running time
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
      
        Messaging.messaging().shouldEstablishDirectChannel = false
        
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {

        connectToFCM()
        
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
    
    // MARK: custume functions for connectiong to FCM and Token Refresh (PushNotifications with Firebase)
    
    func tokenRefreshNotification(notification: NSNotification) {
        
        let refreshedToken = InstanceID.instanceID().token()
        
        print("InstanceID token: \(String(describing: refreshedToken))")
        
        connectToFCM()
        
    }
    
    func connectToFCM () {
        
        Messaging.messaging().shouldEstablishDirectChannel = true
        
    }


}

