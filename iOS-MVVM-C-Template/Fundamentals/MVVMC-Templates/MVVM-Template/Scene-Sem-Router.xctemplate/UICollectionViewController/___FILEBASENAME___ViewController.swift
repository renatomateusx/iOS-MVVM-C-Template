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
  }

  private func setupBinds() {
    //Setup the binds to viewModel here
  }
}
