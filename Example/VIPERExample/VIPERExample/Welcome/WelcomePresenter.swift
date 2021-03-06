//
//  WelcomePresenter.swift
//  VIPERExample
//
//  Created by Sergey Petrachkov on 13/09/2017.
//  Copyright (c) 2017 Sergey Petrachkov. All rights reserved.
//
//  This file was generated by the SergeyPetrachkov VIPER Xcode Templates so
//  you can apply VIPER architecture to your iOS projects
//

import UIKit

protocol WelcomePresenterInput: class {
  var view: UIViewController! { get set }
  var output: WelcomePresenterOutput? { get set }
  var router : WelcomeRoutingLogic? { get set }
  var interactor : WelcomeInteractorInput? { get set }
  func requestMore()
}
protocol WelcomePresenterOutput: class {
  func didChangeState(viewModel : Welcome.DataContext.ViewModel)
}

class WelcomePresenter: WelcomePresenterInput {
  // MARK: - Essentials
  var view: UIViewController!
  weak var output : WelcomePresenterOutput?
  var viewModel : Welcome.DataContext.ViewModel? {
    didSet{
      guard let viewModel = self.viewModel else {
        return
        //or do something else like show placeholder
      }
      self.output?.didChangeState(viewModel: viewModel)
    }
  }
  var router : WelcomeRoutingLogic?
  var interactor : WelcomeInteractorInput?
  // MARK: - Initializers
  init() {
    
  }
  
  // MARK: - Presenter Input
  func requestMore() {
    self.router?.showPlainCodeModule(from: self.view)
  }
}
extension WelcomePresenter : WelcomeInteractorOutput {
  //MARK: - Interactor output
  func didReceive(some data: Any) {
    // Process it and act accordingly like:
    // self.output?.didChangeState(viewModel : )
  }
  func didFail(with error: Error) {
//    self.router.showError(error: error)
  }
}
