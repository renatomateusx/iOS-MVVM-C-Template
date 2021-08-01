//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

struct ___VARIABLE_sceneName___CellViewModel {

  //MARK: - Initialize

  init() {
  }
}

extension ___VARIABLE_sceneName___CellViewModel: SelfConstructedTableCellViewModelProtocol {
  func makeCell(for tableView: UITableView, at indexPath: IndexPath) -> UITableViewCell? {
    let identifier = ___VARIABLE_sceneName___TableViewCell.identifier
    guard let cell = tableView.dequeueReusableCell(withIdentifier: identifier,
                                                   for: indexPath) as? ___VARIABLE_sceneName___TableViewCell else {
                                                    preconditionFailure("___VARIABLE_sceneName___TableViewCell not registred")
    }
    cell.config(with: self)
    return cell
  }
}