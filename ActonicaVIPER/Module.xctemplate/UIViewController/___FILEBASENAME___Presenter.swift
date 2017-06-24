//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Actonica VIPER Xcode Templates so
//  you can apply VIPER architecture to your iOS projects.
//

import UIKit

protocol ___VARIABLE_moduleName___PresenterInput {
  func presentSomething()
}
protocol ___VARIABLE_moduleName___PresenterOutput {
  func didChangeState(viewModel : ___VARIABLE_moduleName___.Something.ViewModel)
}

class ___VARIABLE_moduleName___Presenter: ___VARIABLE_moduleName___PresenterInput
{
  //MARK: - Essentials
  var view: UIViewController!
  var output : ___VARIABLE_moduleName___PresenterOutput?
  var viewModel : ___VARIABLE_moduleName___.Something.ViewModel? {
    didSet{
      guard let viewModel = self.viewModel else {
        return
        //or do something else like show placeholder
      }
      self.output?.didChangeState(viewModel: viewModel)
    }
  }
  let router : ___VARIABLE_moduleName___RoutingLogic = ___VARIABLE_moduleName___Router()
  var interactor : ___VARIABLE_moduleName___InteractorInput = ___VARIABLE_moduleName___Interactor()
  //MARK: - Initializers
  fileprivate init() {
    
  }
  
  convenience init(view: UIViewController, output: ___VARIABLE_moduleName___PresenterOutput) {
    self.init()
    self.view = view
    self.output = output
    self.interactor.output = self
  }
  
  // MARK: - Presenter Input
  func presentSomething()
  {
    // ask router to navigate somewhere or ask interactor for resources... it's up to you
    // like:
    // let requestParams = RequestParams()
    // self.interactor.getSomeData(requestParams: requestParams)
    // or:
    // let routingParams = RoutingParams(firstValue : self.viewModel.firstValue, secondValue: self.viewModel.secondValue)
    // self.router.showNextModule(from: self.view, with: routingParams)
  }
}
extension ___VARIABLE_moduleName___Presenter : ___VARIABLE_moduleName___InteractorOutput {
  //MARK: - Interactor output
  func didReceive(some data: Any){
    // Process it and act accordingly like:
    // self.output?.didChangeState(viewModel : )
  }
  func didFail(with error: Error){
//    self.router.showError(error: error)
  }
}
