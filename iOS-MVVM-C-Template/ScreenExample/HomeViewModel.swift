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

protocol HomeViewModelProtocol: AnyObject {
  var imageName: String { get }
  var titleLabel: String { get }
  var subTitleLabel: String { get }
  
  func doSomething()
}

final class HomeViewModel {
  private weak var navigationDelegate: HomeNavigationDelegate?
  
  let imageName = "Home"
  let titleLabel = "Title Label"
  let subTitleLabel = "SubTitle Label"
  
  init(navigationDelegate: HomeNavigationDelegate? = nil) {
    self.navigationDelegate = navigationDelegate
  }
}

//MARK: HomeViewModelProtocol

extension HomeViewModel: HomeViewModelProtocol {
  func doSomething() {
    print("Example of implementing something")
  }
}