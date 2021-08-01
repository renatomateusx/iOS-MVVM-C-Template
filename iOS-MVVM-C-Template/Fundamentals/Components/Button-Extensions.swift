//
//  Button-Extensions.swift
//  iOS-MVVM-C-Template
//
//  Created by Renato Mateus on 01/08/21.
//

import Foundation
import UIKit

final class UIButtonBuilder {
  
  private var backgroundColor: UIColor = .systemGreen
  private var cornerRadius: CGFloat = 6
  
  func withGrayColor() -> Self {
    backgroundColor = .gray
    return self
  }
  
  func withCornerRadius10() -> Self {
    cornerRadius = 10
    return self
  }
  
  func build() -> UIButton {
    let button = UIButton()
    button.backgroundColor = backgroundColor
    button.layer.cornerRadius = cornerRadius
    return button
  }
}
