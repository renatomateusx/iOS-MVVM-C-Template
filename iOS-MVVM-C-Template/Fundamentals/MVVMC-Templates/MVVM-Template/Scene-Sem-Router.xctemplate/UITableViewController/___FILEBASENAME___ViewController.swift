//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

final class ___VARIABLE_sceneName___ViewController: UIViewController {
  private(set) lazy var baseView: ___VARIABLE_productName: identifier___View = {
  	let view = ___VARIABLE_productName: identifier___View()
  	return view
  }()

  let viewModel: ___VARIABLE_productName: identifier___ViewModelProtocol

  init(viewModel: ___VARIABLE_productName: identifier___ViewModelProtocol) {
    self.viewModel = viewModel
    super.init(nibName: nil, bundle: .main)
  }

  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  // MARK: - Life Cycle

  override func loadView() {
    super.loadView()

    view = baseView
  }

  override func viewDidLoad() {
    super.viewDidLoad()

    setupBinds()
    viewModel.fetchObjects()
  }

  private func setupBinds() {
    title = viewModel.navigationTitle

    let tableView = baseView.tableView
    tableView.delegate = self
    tableView.dataSource = self
    tableView.rowHeight = UITableView.automaticDimension

    viewModel.reload.addObservation(for: tableView) { (tableView, _) in
      tableView.reloadData()
    }

    viewModel.loading.addObservation(for: baseView) { (baseView, isLoading) in
      isLoading ? baseView.spinner.startAnimating() : baseView.spinner.stopAnimating()
    }

    viewModel.error.addObservation(for: self) { (viewController, error) in
      UNErrorView.show(error: error, in: self, action: .retry) {
        viewController.viewModel.fetchObjects()
      }
    }
  }
}

// MARK: - UITableViewDelegate

extension ___VARIABLE_sceneName___ViewController: UITableViewDelegate {
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    tableView.deselectRow(at: indexPath, animated: true)
    viewModel.didSelectObject(at: indexPath.row)
  }

  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return UITableView.automaticDimension
  }

  func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    viewModel.headerViewModel.makeHeader(for: tableView, for: section)
  }

  func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
    viewModel.headerHeight
  }

    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
    viewModel.footerViewModel.makeFooter(for: tableView, for: section)
  }

  func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
    viewModel.footerHeight
  }
}

// MARK: - UITableViewDataSource

extension ___VARIABLE_sceneName___ViewController: UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    viewModel.objectCount()
  }

  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    guard let cellViewModel = viewModel.getObject(at: indexPath.row),
      let cell = cellViewModel.makeCell(for: tableView, at: indexPath) else {
        return UITableViewCell()
    }
    return cell
  }
}