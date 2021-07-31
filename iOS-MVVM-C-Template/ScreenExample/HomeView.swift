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
    let view = UIImageView()
    view.contentMode = .scaleAspectFit
    view.translatesAutoresizingMaskIntoConstraints = false
    return view
  }()
  let titleLabel: UILabel = {
    let label = UILabel()
    label.numberOfLines = 0
    label.textColor = .black
    label.font = .systemFont(ofSize: 20, weight: .heavy)
    return label
  }()
  let subtitleLabel: UILabel = {
    let label = UILabel()
    label.numberOfLines = 0
    label.textColor = UIColor.gray
    label.font = .systemFont(ofSize: 16, weight: .bold)
    return label
  }()
  private lazy var labelStackView: UIStackView = {
    let stackView = UIStackView(arrangedSubviews: [imageView, titleLabel, subtitleLabel])
    stackView.axis = .vertical
    stackView.spacing = 6
    stackView.alignment = .leading
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
    ])
  }
}
