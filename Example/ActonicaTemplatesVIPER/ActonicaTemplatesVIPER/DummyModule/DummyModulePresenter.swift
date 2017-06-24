//
//  DummyModulePresenter.swift
//  ActonicaTemplatesVIPER
//
//  Created by Sergey Petrachkov on 6/24/17.
//  Copyright (c) 2017 Sergey Petrachkov. All rights reserved.
//
//  This file was generated by the Actonica VIPER Xcode Templates so
//  you can apply VIPER architecture to your iOS projects.
//

import UIKit

protocol DummyModulePresenterInput {
  func presentSomething()
}
protocol DummyModulePresenterOutput {
  func didChangeState(viewModel : DummyModule.Something.ViewModel)
}

class DummyModulePresenter: DummyModulePresenterInput
{
  //MARK: - Essentials
  var view: UIViewController!
  var output : DummyModulePresenterOutput?
  var viewModel : DummyModule.Something.ViewModel? {
    didSet{
      guard let viewModel = self.viewModel else {
        return
        //or do something else like show placeholder
      }
      self.output?.didChangeState(viewModel: viewModel)
    }
  }
  let router : DummyModuleRoutingLogic = DummyModuleRouter()
  var interactor : DummyModuleInteractorInput = DummyModuleInteractor()
  //MARK: - Initializers
  fileprivate init() {
    
  }
  
  convenience init(view: UIViewController, output: DummyModulePresenterOutput) {
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
extension DummyModulePresenter : DummyModuleInteractorOutput {
  //MARK: - Interactor output
  func didReceive(some data: Any){
    // Process it and act accordingly like:
    // self.output?.didChangeState(viewModel : )
  }
  func didFail(with error: Error){
//    self.router.showError(error: error)
  }
}