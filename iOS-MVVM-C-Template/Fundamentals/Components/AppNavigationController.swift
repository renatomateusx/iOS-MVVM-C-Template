//
//  AppNavigationController.swift
//  iOS-MVVM-C-Template
//
//  Created by Renato Mateus on 31/07/21.
//

import Foundation
import UIKit

final class AppNavigationController: UINavigationController {

  override func loadView() {
    super.loadView()
    configureNavigation()
  }

  private func configureNavigation() {
    navigationBar.barTintColor = .white
    view.backgroundColor = .white
    navigationBar.tintColor = .red
    navigationBar.isTranslucent = false
    navigationBar.setBackgroundImage(UIImage(), for: .default)
    navigationBar.shadowImage = UIImage()
    let attrs = [
      NSAttributedString.Key.foregroundColor: UIColor.green.cgColor,
      NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 16)
    ] as [NSAttributedString.Key : Any]

    UINavigationBar.appearance().titleTextAttributes = attrs
  }
}
