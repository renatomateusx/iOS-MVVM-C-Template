//
//  HomeViewController.swift
//  iOS-MVVM-C-Template
//
//  Created by Renato Mateus on 31/07/21.
//

import UIKit

final class HomeViewController: UIViewController {
  private(set) lazy var baseView: HomeView = {
    let view = HomeView()
    return view
  }()
  let viewModel: HomeViewModelProtocol

  init(viewModel: HomeViewModelProtocol) {
    self.viewModel = viewModel
    super.init(nibName: nil, bundle: .main)
  }

  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  // MARK: - Life Cycle

  override func loadView() {
    super.loadView()

    view = baseView
  }

  override func viewDidLoad() {
    super.viewDidLoad()

    setupBinds()
  }

  private func setupBinds() {
    //Call screens configuration here, like:
    configNavigationBar()
    baseView.titleLabel.text = viewModel.titleLabel
    baseView.subtitleLabel.text = viewModel.subTitleLabel
    baseView.imageView.image = UIImage(named: viewModel.imageName)
  }
}

// MARK: - HomeViewController

extension HomeViewController {
  //you can rewrite the bar color writen on appDelegate previously
  func configNavigationBar() {
    title = viewModel.navigationTitle
  }
}


