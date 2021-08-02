//
//  HomeWorker.swift
//  iOS-MVVM-C-Template
//
//  Created by Renato Mateus on 31/07/21.
//

import Foundation

protocol HomeWorkerProtocol: AnyObject {
  typealias completionHandler<T> = (Result<T, Error>) -> Void
  
  func getConsent(request: HomeModel,
                  completion: @escaping completionHandler<HomeModel>)
  func sendConsent(request: HomeModel,
                   completion: @escaping (Result<HomeModel, Error>) -> Void)
}

class HomeWorker {
  private var service: NetworkService
  
  init(service: NetworkService = NetworkService()) {
    self.service = service
  }
}

extension HomeWorker: HomeWorkerProtocol {
  func getConsent(request: HomeModel, completion: @escaping completionHandler<HomeModel>) {
    let url = URL(string: "https://seiqueila")!
    self.service.request(for: url, completion: completion)
  }
  
  func sendConsent(request: HomeModel, completion: @escaping (Result<HomeModel, Error>) -> Void) {
    let url = URL(string: "https://seiqueila")!
    self.service.requestData(for: url, httpBody: request, completion: completion)
  }
  
  
}
