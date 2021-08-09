//
//  SecondSceneViewController.swift
//  iOS-MVVM-C-Template
//
//  Created by Renato Mateus on 09/08/21.
//  Copyright (c) 2021 ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

final class SecondSceneViewController: UIViewController {
  
  @IBOutlet weak var labelXIBFile: UILabel!
  let viewModel: SecondSceneViewModelProtocol
  let identifier: String = "SecondSceneViewController"

  init(viewModel: SecondSceneViewModelProtocol) {
    self.viewModel = viewModel
    super.init(nibName: identifier, bundle: Bundle.main)
  }

  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  // MARK: - Life Cycle
  
  override func viewDidLoad() {
    super.viewDidLoad()

    setupBinds()
  }

  private func setupBinds() {
    labelXIBFile.text = viewModel.titleLabel
  }
}
