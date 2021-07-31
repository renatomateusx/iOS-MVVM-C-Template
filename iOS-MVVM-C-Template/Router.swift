//
//  Router.swift
//  iOS-MVVM-C-Template
//
//  Created by Renato Mateus on 31/07/21.
//

import Foundation

/// The Router protocol
public protocol Router: AnyObject {

  /// The array containing any child Routers
  var childRouters: [Router] { get set }

  /// Start func
  func start()
}

public extension Router {

  /// Add a child Router to the parent
  @discardableResult func addChildRouter(_ childRouter: Router) -> Router {
    self.childRouters.append(childRouter)
    return childRouter
  }

  /// Remove a child Router from the parent
  @discardableResult func removeChildRouter(_ childRouter: Router) -> Router {
    self.childRouters = self.childRouters.filter { $0 !== childRouter }
    return childRouter
  }
}

public protocol RouterDelegate: AnyObject {
  func didClose(childRouter: Router)
}
