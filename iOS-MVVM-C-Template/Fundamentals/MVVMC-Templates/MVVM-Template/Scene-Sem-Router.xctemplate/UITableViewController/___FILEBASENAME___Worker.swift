//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

protocol ___VARIABLE_sceneName___WorkerProtocol: AnyObject {
  func fetchObjects(completion: @escaping (Result<[___VARIABLE_sceneName___Scene], Error>) -> Void )
}

class ___VARIABLE_sceneName___Worker {
  private var service: DataRequestable

  init(service: DataRequestable = Service()) {
    self.service = service
  }
}

//MARK: - ___VARIABLE_sceneName___WorkerProtocol

extension ___VARIABLE_sceneName___Worker: ___VARIABLE_sceneName___WorkerProtocol {
  func fetchObjects(completion: @escaping (Result<[___VARIABLE_sceneName___Scene], Error>) -> Void) {
    let config = RequestConfig(path: "path")

    service.requestObject(with: config, completion: completion)
  }
 }