//
//  HomeView.swift
//  iOS-MVVM-C-Template
//
//  Created by Renato Mateus on 31/07/21.
//

import Foundation
import UIKit

final class HomeView: BaseView {
   let imageView: UIImageView = {
    return UIImageViewBuilder()
      .withContentModeScaleAspectFit()
      .build()
  }()
  let titleLabel: UILabel = {
    return UILabelBuilder()
      .withSystemFont20Heavy()
      .build()
  }()
  let subtitleLabel: UILabel = {
    return UILabelBuilder()
      .withTextColorGray()
      .withSystemFont16Bold()
      .build()
  }()
  let buttonConfirm: UIButton = {
    let button = UIButtonBuilder()
      .build()
    button.setTitle("Confirmar", for: .normal)
    return button
  }()
  let buttonCancel: UIButton = {
    let button = UIButtonBuilder()
      .withGrayColor()
      .build()
    button.setTitle("Cancelar", for: .normal)
    return button
  }()
  private lazy var labelStackView: UIStackView = {
    let stackView = UIStackView(arrangedSubviews: [imageView,
                                                   titleLabel,
                                                   subtitleLabel,
                                                   buttonConfirm,
                                                   buttonCancel])
    stackView.axis = .vertical
    stackView.spacing = 6
    stackView.alignment = .center
    stackView.translatesAutoresizingMaskIntoConstraints = false
    return stackView
  }()

  //MARK: - Initialize
  
  override func initialize() {
    backgroundColor = .white
    addSubview(labelStackView)
  }
  
  //MARK: - Constraints
  
  override func installConstraints() {
    NSLayoutConstraint.activate([
      labelStackView.topAnchor.constraint(equalTo: layoutMarginsGuide.topAnchor, constant: 20),
      labelStackView.leadingAnchor.constraint(equalTo: layoutMarginsGuide.leadingAnchor, constant: 10),
      labelStackView.trailingAnchor.constraint(equalTo: layoutMarginsGuide.trailingAnchor, constant: -10),

      imageView.heightAnchor.constraint(equalToConstant: 150),
      imageView.widthAnchor.constraint(equalToConstant: 150),
      imageView.centerXAnchor.constraint(equalTo: layoutMarginsGuide.centerXAnchor),
      
      buttonConfirm.widthAnchor.constraint(equalTo: layoutMarginsGuide.widthAnchor),
      buttonConfirm.heightAnchor.constraint(equalToConstant: 45),
      
      buttonCancel.widthAnchor.constraint(equalTo: layoutMarginsGuide.widthAnchor),
      buttonCancel.heightAnchor.constraint(equalToConstant: 45)
    ])
  }
}
