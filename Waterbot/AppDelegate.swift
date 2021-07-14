//
//  AppDelegate.swift
//  Waterbot
//
//  Created by masterdev3_ios on 7/1/21.
//



// Swift // // AppDelegate.swift
import UIKit
import FBSDKCoreKit
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate{
    var window: UIWindow?
    func application( _ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]? ) -> Bool {
        ApplicationDelegate.shared.application( application, didFinishLaunchingWithOptions: launchOptions );
        return true
        
    }
    
    func applicationWillResignActive(_application: UIApplication)  {
        
        
    }
    
    func applicationDidEnterBackground(_application: UIApplication) {
        
    }
    
    func applicationWillEnterForeground(_application: UIApplication)  {
        
    }
    
    func applicationWillTerminate(_application: UIApplication)  {
        
    }
    
    func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
        return ApplicationDelegate.shared.application(app, open: url, options: options)
    
    
    }
    
}
