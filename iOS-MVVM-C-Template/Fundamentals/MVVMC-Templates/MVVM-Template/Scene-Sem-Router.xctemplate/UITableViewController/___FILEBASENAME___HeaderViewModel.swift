//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation

struct ___VARIABLE_sceneName___HeaderViewModel {
  
  //MARK: - Initialize

  init() {
  }
}

extension ___VARIABLE_sceneName___HeaderViewModel: SelfConstructedTableViewHeaderProtocol {
  func makeHeader(for tableView: UITableView, for section: Int) -> UITableViewHeaderFooterView? {
    guard let headerView = tableView.dequeueReusableHeaderFooterView(withIdentifier: ___VARIABLE_sceneName___HeaderView.identifier) as? ___VARIABLE_sceneName___HeaderView else {
      preconditionFailure("___VARIABLE_sceneName___HeaderView not found")
    }

    headerView.config(with: self)

    return headerView
  }
}