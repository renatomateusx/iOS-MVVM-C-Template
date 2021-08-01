//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

final class ___VARIABLE_sceneName___Router: Router {
  var childRouters: [Router] = []
  private let presenter: UINavigationController
  private weak var navigationDelegate: RouterDelegate?

  // MARK: - Life Cycle

  init(presenter: UINavigationController, navigationDelegate: RouterDelegate? = nil) {
    self.presenter = presenter
    self.navigationDelegate = navigationDelegate
  }

  // MARK: - Functions
  
  func start() {
    let viewModel = ___VARIABLE_sceneName___ViewModel(navigationDelegate: self)
    let viewController = ___VARIABLE_sceneName___ViewController(viewModel: viewModel)
    presenter.pushViewController(viewController, animated: true)
  }
}

extension ___VARIABLE_sceneName___Router: ___VARIABLE_sceneName___NavigationDelegate { }
