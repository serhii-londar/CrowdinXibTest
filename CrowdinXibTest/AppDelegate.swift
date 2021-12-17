//
//  AppDelegate.swift
//  CrowdinXibTest
//
//  Created by Serhii Londar on 10.12.2021.
//

import UIKit
import CrowdinSDK

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow? = UIWindow(frame: UIScreen.main.bounds)

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        CrowdinSDK.startWithConfig(CrowdinSDKConfig.config().with(crowdinProviderConfig: CrowdinProviderConfig(hashString: "0f4bdbc13500f1cd2d28e58106i", sourceLanguage: "en"))) {
            
        }
        
        CrowdinSDK.addDownloadHandler {
            DispatchQueue.main.async {
                self.window?.rootViewController = ViewController(nibName: nil, bundle: nil)
                self.window?.makeKeyAndVisible()
            }
        }
        
        return true
    }
}

