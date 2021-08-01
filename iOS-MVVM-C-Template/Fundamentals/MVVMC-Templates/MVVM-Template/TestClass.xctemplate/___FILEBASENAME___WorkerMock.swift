//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation
@testable import ___PROJECTNAME___

final class ___VARIABLE_sceneName___SuccessWorker: ___VARIABLE_sceneName___WorkerProtocol {
  var fetchObjectsCalled = false
  private var objects: [___VARIABLE_sceneName___Scene]

  init(objects: [___VARIABLE_sceneName___Scene]) {
    self.objects = objects
  }

  func fetchObjects(completion: @escaping (Result<[___VARIABLE_sceneName___Scene], Error>) -> Void) {
    fetchObjectsCalled = true
    completion(.success(objects))
  }
}

final class ___VARIABLE_sceneName___FixaFailureWorker: WorkerFailureMock, ___VARIABLE_sceneName___WorkerProtocol {
  func fetchObjects(completion: @escaping (Result<[___VARIABLE_sceneName___Scene], Error>) -> Void) {
    completion(.failure(MockError.default))
  }
}
