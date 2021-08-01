//
//  ImageView-Extensions.swift
//  iOS-MVVM-C-Template
//
//  Created by Renato Mateus on 01/08/21.
//

import Foundation
import UIKit

final class UIImageViewBuilder {
  
  private var contentMode: UIView.ContentMode = .scaleAspectFit
  
  func withContentModeScaleAspectFit() -> Self {
    self.contentMode = .scaleAspectFit
    return self
  }
  
  func build() -> UIImageView {
    let view = UIImageView()
    view.contentMode = self.contentMode
    view.translatesAutoresizingMaskIntoConstraints = false
    return view
  }
}
