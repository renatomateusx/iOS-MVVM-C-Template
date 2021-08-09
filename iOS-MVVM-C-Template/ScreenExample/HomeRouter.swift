//
//  HomeRouter.swift
//  iOS-MVVM-C-Template
//
//  Created by Renato Mateus on 31/07/21.
//

import Foundation
import UIKit

final class HomeRouter: Router {
  var childRouters: [Router] = []
  private let presenter: UINavigationController
  private let usingModal: Bool
  private weak var navigationDelegate: RouterDelegate?
  private var navigationController: UINavigationController?
  
  // MARK: - Life Cycle
  
  init(presenter: UINavigationController,
       navigationDelegate: RouterDelegate? = nil,
       _ usingModal: Bool = true) {
    self.presenter = presenter
    self.navigationDelegate = navigationDelegate
    self.usingModal = usingModal
  }
  
  // MARK: - Functions
  
  func start() {
    DispatchQueue.main.async {
      if self.usingModal {
        let viewModel = HomeViewModel(navigationDelegate: self)
        let viewController = HomeViewController(viewModel: viewModel)
        let navigationController = UINavigationController(rootViewController: viewController)
        if #available(iOS 13, *) {
          navigationController.isModalInPresentation = true
        }
        self.presenter.present(navigationController, animated: true)
      } else {
        let viewModel = HomeViewModel(navigationDelegate: self)
        let viewController = HomeViewController(viewModel: viewModel)
        self.presenter.pushViewController(viewController, animated: true)
      }
    }
  }
}

//MARK: HomeViewModelDelegate

extension HomeRouter: HomeNavigationDelegate {
  func verifyMyData() {
    DispatchQueue.main.async {
      let viewModel = SecondSceneViewModel(navigationDelegate: self)
      let viewController = SecondSceneViewController(viewModel: viewModel)
      self.presenter.pushViewController(viewController, animated: true)
    }
  }
  
  func postpone() {
    print("Example")
  }
  
  func close() {
    print("Example")
  }
}

//MARK: - SecondSceneNavigationDelegate

extension HomeRouter: SecondSceneNavigationDelegate {
  
}
