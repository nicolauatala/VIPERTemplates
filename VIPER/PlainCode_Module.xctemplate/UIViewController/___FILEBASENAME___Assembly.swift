//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the SergeyPetrachkov VIPER Xcode Templates so
//  you can apply VIPER architecture to your iOS projects
//

import UIKit

class ___VARIABLE_moduleName___Assembly {
  // MARK: - Public methods
  static func createModule() -> ___VARIABLE_moduleName___ViewController {
    let controller = ___VARIABLE_moduleName___ViewController() 
    let presenter = injectPresenter()
    presenter.output = controller
    presenter.view = controller
    controller.presenter = presenter
    return controller
  }
  // MARK: - Private injections
  fileprivate static func injectPresenter() -> ___VARIABLE_moduleName___PresenterInput {
    let presenter = ___VARIABLE_moduleName___Presenter()
    let interactor = injectInteractor()
    interactor.output = presenter
    presenter.interactor = interactor
    let router = injectRouter()
    presenter.router = router
    return presenter
  }
  fileprivate static func injectInteractor() -> ___VARIABLE_moduleName___InteractorInput {
    return ___VARIABLE_moduleName___Interactor()
  }
  fileprivate static func injectRouter() -> ___VARIABLE_moduleName___RoutingLogic {
    return ___VARIABLE_moduleName___Router()
  }
}