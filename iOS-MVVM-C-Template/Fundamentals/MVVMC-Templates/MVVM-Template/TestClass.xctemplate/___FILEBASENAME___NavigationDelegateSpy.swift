//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation
@testable import ___PROJECTNAME___

final class ___VARIABLE_sceneName___NavigationDelegateSpy: ___VARIABLE_sceneName___NavigationDelegate {
  var objectPassed: ___VARIABLE_sceneName___CellViewModel?

  func detalhe(object: ___VARIABLE_sceneName___CellViewModel) {
    objectPassed = object
  }
}
