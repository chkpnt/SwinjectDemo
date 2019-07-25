//
//  AppDelegate.swift
//  SwinjectDemo
//
//  Created by Gregor Dschung on 22.07.19.
//  Copyright © 2019 Gregor Dschung. All rights reserved.
//

import os.log
import UIKit
import Swinject
import SomeFramework
import SomeOtherFramework

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    private let assembler = Assembler()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        assembler.apply(assembly: SwinjectDemoAssembly())
        assembler.apply(assembly: SomeFrameworkAssembly())
        assembler.apply(assembly: SomeOtherFrameworkAssembly())
        
        print("Available through Swinject Container: \(assembler.resolver)")
        
        let bla = assembler.resolver.resolve(Bla.self)
        print("bla: \(bla)")
        bla?.blub()
        
        // This works if Carthage is used, but not if SPM is used
        let someFrameworkStuff = assembler.resolver.resolve(SomeFrameworkStuff.self)
        print("someFrameworkStuff: \(someFrameworkStuff)")
        someFrameworkStuff?.foobar()
        
        let someOtherFrameworkStuff = assembler.resolver.resolve(SomeOtherFrameworkStuff.self)
        print("someOtherFrameworkStuff: \(someOtherFrameworkStuff)")
        someOtherFrameworkStuff?.foobar2()
        
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

