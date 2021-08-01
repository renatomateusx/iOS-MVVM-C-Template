//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation

struct ___VARIABLE_sceneName___FooterViewModel {
  
  //MARK: - Initialize

  init() {
  }
}

extension ___VARIABLE_sceneName___FooterViewModel: SelfConstructedTableViewFooterProtocol {
  func makeFooter(for tableView: UITableView, for section: Int) -> UITableViewHeaderFooterView? {
    guard let footerView = tableView.dequeueReusableHeaderFooterView(withIdentifier: ___VARIABLE_sceneName___FooterView.identifier) as? ___VARIABLE_sceneName___FooterView else {
      preconditionFailure("___VARIABLE_sceneName___FooterView not found")
    }

    footerView.config(with: self)

    return footerView
  }
}