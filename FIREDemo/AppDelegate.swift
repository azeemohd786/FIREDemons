//
//  AppDelegate.swift
//  FIREDemo
//
//  Created by Mohammed Azeem Azeez on 02/02/2020.
//  Copyright © 2020 Blue Mango Global. All rights reserved.
//

import UIKit
import Firebase
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

 var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
  FIRFirestoreService.shared.configure()
        return true
    }



}

