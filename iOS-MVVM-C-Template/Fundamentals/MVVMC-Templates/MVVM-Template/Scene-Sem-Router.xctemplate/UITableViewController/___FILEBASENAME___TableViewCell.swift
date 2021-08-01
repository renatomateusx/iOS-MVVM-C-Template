//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

final class ___VARIABLE_sceneName___TableViewCell: UITableViewCell {
  static let identifier = "___VARIABLE_sceneName___TableViewCell"

  //MARK: - Initialize

  override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)

    // accessoryType = .disclosureIndicator
    selectionStyle = .none
    separatorInset = UIEdgeInsets(top: 0, left: 15, bottom: 0, right: 15)

    // contentView.addSubviews()

    installConstraints()
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has been implemented")
  }

  //MARK: - Constraints
  private func installConstraints() {
    NSLayoutConstraint.activate([

    ])
  }

  func config(with viewModel: ___VARIABLE_sceneName___CellViewModel) {
    
  }
}