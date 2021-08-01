//
//  AppDelegate.swift
//  iOS-MVVM-C-Template
//
//  Created by Renato Mateus on 31/07/21.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
  var window: UIWindow?
  private var appRouter: Router?

  static var navigationController: UINavigationController? {
    return (UIApplication.shared.delegate as? AppDelegate)?.window?.rootViewController as? UINavigationController
  }

  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    let window = UIWindow(frame: UIScreen.main.bounds)
    let appRouter = AppRouter(window: window)

    self.window = window
    self.appRouter = appRouter

    appRouter.start()
    configureBar()
    
    return true
  }
  
  func configureBar() {
    let barAppearance = UINavigationBar.appearance()
    barAppearance.barTintColor = UIColor.gray
    barAppearance.tintColor = UIColor.white
    barAppearance.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
  }
}

