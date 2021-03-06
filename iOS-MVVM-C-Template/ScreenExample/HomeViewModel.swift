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
  var buttonCancelTitle: String { get }
  var buttonConfirmTitle: String { get }
  
  func confirmData()
  func getConsent()
}

final class HomeViewModel {
  private var service: HomeWorker
  private weak var navigationDelegate: HomeNavigationDelegate?
  
  let navigationTitle: String = "Home View"
  let imageName: String = "Home"
  let titleLabel: String = "Title Label"
  let subTitleLabel: String = "SubTitle Label"
  let buttonCancelTitle: String = "Cancelar"
  let buttonConfirmTitle: String = "Confirmar"
  
  init(service: HomeWorker = HomeWorker(),
       navigationDelegate: HomeNavigationDelegate? = nil) {
    self.service = service
    self.navigationDelegate = navigationDelegate
  }
}

//MARK: HomeViewModelProtocol

extension HomeViewModel: HomeViewModelProtocol {
  func confirmData() {
    navigationDelegate?.verifyMyData()
  }
  
  func getConsent() {
    service.getConsent() { result in
      switch result {
      case .success(let dataResult):
        print("data Result: \(dataResult.token)")
      case .failure(let error):
        print("Error \(error.localizedDescription)")
      }
    }
  }
}
