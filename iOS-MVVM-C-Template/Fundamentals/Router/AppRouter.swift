//
//  AppRouter.swift
//  iOS-MVVM-C-Template
//
//  Created by Renato Mateus on 31/07/21.
//

import Foundation
import UIKit

class AppRouter: Router {
  let window: UIWindow
  var childRouters: [Router] = []
  var rootViewController: UIViewController {
    return self.navigationController
  }

  lazy var navigationController: AppNavigationController = {
    let navigationController = AppNavigationController()
    return navigationController
  }()

  init(window: UIWindow) {
    self.window = window
    self.window.rootViewController = self.rootViewController
    self.window.makeKeyAndVisible()
  }

  func start() {
    // You can define the last param as false to not use modal, the default is true.
    let loginRouter = HomeRouter(presenter: navigationController, navigationDelegate: self, false)
    addChildRouter(loginRouter)
    loginRouter.start()
  }
}

extension AppRouter: RouterDelegate {
  func didClose(childRouter: Router) {
    removeChildRouter(childRouter)
  }
}
