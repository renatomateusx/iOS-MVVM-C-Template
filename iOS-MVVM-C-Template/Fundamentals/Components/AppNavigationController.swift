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
    navigationBar.barTintColor = .gray
    view.backgroundColor = .gray
    navigationBar.tintColor = .white
    navigationBar.isTranslucent = false
    navigationBar.setBackgroundImage(UIImage(), for: .default)
    navigationBar.shadowImage = UIImage()
    let attrs = [
      NSAttributedString.Key.foregroundColor: UIColor.white.cgColor,
      NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 16)
    ] as [NSAttributedString.Key : Any]

    UINavigationBar.appearance().titleTextAttributes = attrs
  }
}
