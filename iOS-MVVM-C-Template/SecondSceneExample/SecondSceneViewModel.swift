//
//  SecondSceneViewModel.swift
//  iOS-MVVM-C-Template
//
//  Created by Renato Mateus on 09/08/21.
//  Copyright (c) 2021 ___ORGANIZATIONNAME___. All rights reserved.
//

protocol SecondSceneNavigationDelegate: AnyObject {

}

protocol SecondSceneViewModelProtocol: AnyObject {
  var titleLabel: String { get }
}

class SecondSceneViewModel {
  private var service: SecondSceneWorkerProtocol
  private weak var navigationDelegate: SecondSceneNavigationDelegate?
  
  let titleLabel: String = "Title Label 2"
  
  init(service: SecondSceneWorkerProtocol = SecondSceneWorker(),
       navigationDelegate: SecondSceneNavigationDelegate? = nil) {
    self.service = service
    self.navigationDelegate = navigationDelegate
  }
}

//MARK: - SecondSceneViewModelProtocol

extension SecondSceneViewModel: SecondSceneViewModelProtocol { }
