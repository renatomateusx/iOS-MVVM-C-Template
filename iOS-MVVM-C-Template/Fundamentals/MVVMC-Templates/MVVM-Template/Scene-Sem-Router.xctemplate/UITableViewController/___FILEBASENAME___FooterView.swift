//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

final class ___VARIABLE_sceneName___FooterView: UITableViewHeaderFooterView {
  static let identifier = "___VARIABLE_sceneName___FooterView"
  static let height: CGFloat = 70

  //MARK: - Initialize

  override init(reuseIdentifier: String?) {
    super.init(reuseIdentifier: reuseIdentifier)

    contentView.backgroundColor = AppColor.clearBackground
    // contentView.addSubviews()
    installConstraints()
  }

  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  //MARK: - Constraints
  private func installConstraints() {
    NSLayoutConstraint.activate([

    ])
  }

  func config(with viewModel: ___VARIABLE_sceneName___FooterViewModel) {
    
  }
}