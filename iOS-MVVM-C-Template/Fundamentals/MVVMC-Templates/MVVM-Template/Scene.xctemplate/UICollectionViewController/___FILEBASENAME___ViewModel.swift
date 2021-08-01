//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

protocol ___VARIABLE_sceneName___NavigationDelegate: AnyObject {

}

protocol ___VARIABLE_sceneName___ViewModelProtocol: AnyObject {
  
}

class ___VARIABLE_sceneName___ViewModel {
  private var service: ___VARIABLE_productName:identifier___WorkerProtocol
  private weak var navigationDelegate: ___VARIABLE_productName: identifier___NavigationDelegate?
  
  init(service: ___VARIABLE_productName: identifier___WorkerProtocol = ___VARIABLE_sceneName___Worker(),
       navigationDelegate: ___VARIABLE_productName: identifier___NavigationDelegate? = nil) {
    self.service = service
    self.navigationDelegate = navigationDelegate
  }
}

//MARK: - ___VARIABLE_sceneName___ViewModelProtocol

extension ___VARIABLE_sceneName___ViewModel: ___VARIABLE_sceneName___ViewModelProtocol { }
