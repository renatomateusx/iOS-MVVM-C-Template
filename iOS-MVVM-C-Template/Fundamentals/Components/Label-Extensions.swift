//
//  Label-Extensions.swift
//  iOS-MVVM-C-Template
//
//  Created by Renato Mateus on 01/08/21.
//

import Foundation
import UIKit

final class UILabelBuilder {
  
  private var numberLines: Int = 0
  private var labelFont: UIFont = .systemFont(ofSize: 20, weight: .regular)
  private var textLabelColor: UIColor = UIColor.black
  private var aligment: NSTextAlignment = .center
  
  func withNumberOfLinesZERO() -> Self {
    self.numberLines = 0
    return self
  }
  
  func withSystemFont20Heavy() -> Self {
    self.labelFont = .systemFont(ofSize: 20, weight: .heavy)
    return self
  }
  
  func withSystemFont16Bold() -> Self {
    self.labelFont = .systemFont(ofSize: 16, weight: .bold)
    return self
  }
  
  func withTextColorBlack() -> Self {
    self.textLabelColor = .black
    return self
  }
  
  func withTextColorGray() -> Self {
    self.textLabelColor = .gray
    return self
  }
  
  func withJustifiedAlignment() -> Self {
    self.aligment = .justified
    return self
  }
  
  func build() -> UILabel {
    let label = UILabel()
    label.numberOfLines = self.numberLines
    label.textColor = self.textLabelColor
    label.font = self.labelFont
    label.textAlignment = self.aligment
    return label
  }
}
