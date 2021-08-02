//
//  HomeViewModel.swift
//  iOS-MVVM-C-Template
//
//  Created by Renato Mateus on 31/07/21.
//

import Foundation

protocol HomeNavigationDelegate: AnyObject {
  func verifyMyData()
  func postpone()
  func close()
}

protocol HomeViewModelProtocol: AnyObject, NavigationTitle {
  var imageName: String { get }
  var titleLabel: String { get }
  var subTitleLabel: String { get }
  
  func doSomething()
  func getConsent()
}

final class HomeViewModel {
  private var service: HomeWorker
  private weak var navigationDelegate: HomeNavigationDelegate?
  
  let navigationTitle = "Home View"
  let imageName = "Home"
  let titleLabel = "Title Label"
  let subTitleLabel = "SubTitle Label"
  
  init(service: HomeWorker = HomeWorker(),
       navigationDelegate: HomeNavigationDelegate? = nil) {
    self.service = service
    self.navigationDelegate = navigationDelegate
  }
}

//MARK: HomeViewModelProtocol

extension HomeViewModel: HomeViewModelProtocol {
  func doSomething() {
    print("Example of implementing something")
  }
  
  func getConsent() {
    let request = HomeModel(token: "t38398wrsfasd")
    service.getConsent(request: request) { result in
      switch result {
      case .success(let dataResult):
        print("data Result: \(dataResult.token)")
      case .failure(let error):
        print("Error \(error.localizedDescription)")
      }
    }
  }
}
