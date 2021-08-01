//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

protocol ___VARIABLE_sceneName___NavigationDelegate: AnyObject {
  func detalhe(object: ___VARIABLE_sceneName___CellViewModel)
}

protocol ___VARIABLE_sceneName___ViewModelProtocol: AnyObject {
  var navigationTitle: String { get }
  var loading: Bindable<Bool> { get }
  var error: Bindable<Error> { get }
  var reload: Bindable<Void> { get }
  var headerHeight: CGFloat { get }
  var footerHeight: CGFloat { get }
  var headerViewModel: ___VARIABLE_sceneName___HeaderViewModel { get }
  var footerViewModel: ___VARIABLE_sceneName___FooterViewModel { get }

  func fetchObjects()
  func objectCount() -> Int
  func getObject(at row: Int) -> ___VARIABLE_sceneName___CellViewModel?
  func didSelectObject(at row: Int)
}

class ___VARIABLE_sceneName___ViewModel {
  private var service: ___VARIABLE_productName: identifier___WorkerProtocol
  private weak var navigationDelegate: ___VARIABLE_productName: identifier___NavigationDelegate?
  let loading: Bindable<Bool> = Bindable()
  let error: Bindable<Error> = Bindable()
  let reload: Bindable<Void> = Bindable()
  let navigationTitle = "Navigation Title"
  let headerViewModel: ___VARIABLE_sceneName___HeaderViewModel = ___VARIABLE_sceneName___HeaderViewModel() 
  let footerViewModel: ___VARIABLE_sceneName___FooterViewModel = ___VARIABLE_sceneName___FooterViewModel()
  let headerHeight: CGFloat = ___VARIABLE_sceneName___HeaderView.height
  let footerHeight: CGFloat = ___VARIABLE_sceneName___FooterView.height
  private var objects: [___VARIABLE_sceneName___CellViewModel] = []
  
  init(service: ___VARIABLE_productName: identifier___WorkerProtocol = ___VARIABLE_sceneName___Worker(),
       navigationDelegate: ___VARIABLE_productName: identifier___NavigationDelegate? = nil) {
    self.service = service
    self.navigationDelegate = navigationDelegate
  }
}

//MARK: - ___VARIABLE_sceneName___ViewModelProtocol

extension ___VARIABLE_sceneName___ViewModel: ___VARIABLE_sceneName___ViewModelProtocol {
  func fetchObjects() {
    loading.update(with: true)
        
    service.fetchObjects { result in
      self.loading.update(with: false)

      switch result {
      case .success(let objects):
        break
//        self.objects = objects.map()
        
      case .failure(let error):
        self.error.update(with: error)
      }
    }
  }

  func objectCount() -> Int {
    objects.count
  }

  func getObject(at row: Int) -> ___VARIABLE_sceneName___CellViewModel? {
    guard objects.indices.contains(row) else { return nil }
    return objects[row]
  }

  func didSelectObject(at row: Int) {
    guard let object = getObject(at: row) else { return }
    navigationDelegate?.detalhe(object: object)
  }
 }