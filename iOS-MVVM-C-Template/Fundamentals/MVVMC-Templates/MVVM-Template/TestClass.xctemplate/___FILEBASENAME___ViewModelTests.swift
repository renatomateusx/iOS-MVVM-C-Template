//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation
import Quick
import Nimble
@testable import ___PROJECTNAME___

final class ___VARIABLE_sceneName___ViewModelTests: QuickSpec {
  override func spec() {
    super.spec()

    describe("___VARIABLE_sceneName___ViewModel") {
      beforeEach {
        SessionManager.createSessionSuccessMock()
      }
      afterEach {
        SessionManager.shared.cleanSession()
      }
      context("descrever o contexto") {
        it("caso de teste") {

        }
      }
    }
  }
}
