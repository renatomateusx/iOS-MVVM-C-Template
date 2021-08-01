//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

final class ___VARIABLE_sceneName___View: BaseView {
let tableView: UITableView = {
    let tableView = UITableView()
    tableView.separatorColor = AppColor.tableViewSeparatorColor
    tableView.register(___VARIABLE_sceneName___TableViewCell.self, forCellReuseIdentifier: ___VARIABLE_sceneName___TableViewCell.identifier)
    tableView.register(___VARIABLE_sceneName___HeaderView.self, forHeaderFooterViewReuseIdentifier: ___VARIABLE_sceneName___HeaderView.identifier)
    tableView.register(___VARIABLE_sceneName___FooterView.self, forHeaderFooterViewReuseIdentifier: ___VARIABLE_sceneName___FooterView.identifier)
    return tableView
  }()

  //MARK: - Initialize

  override func initialize() {
    backgroundColor = .white
    addSubview(tableView, enableConstraints: true)
  }
  
  //MARK: - Constraints

  override func installConstraints() {
    NSLayoutConstraint.activate([
      tableView.topAnchor.constraint(equalTo: topAnchor),
      tableView.leadingAnchor.constraint(equalTo: leadingAnchor),
      tableView.trailingAnchor.constraint(equalTo: trailingAnchor),
      tableView.bottomAnchor.constraint(equalTo: safeBottomAnchor)
    ])
  }
}