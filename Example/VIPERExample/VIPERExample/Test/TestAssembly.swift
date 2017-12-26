//
//  TestAssembly.swift
//  VIPERExample
//
//  Created by Sergey Petrachkov on 26/12/2017.
//  Copyright (c) 2017 Sergey Petrachkov. All rights reserved.
//
//  This file was generated by the SergeyPetrachkov VIPER Xcode Templates so
//  you can apply VIPER architecture to your iOS projects
//

import UIKit

class TestAssembly {
  // MARK: - Constants
  fileprivate static let storyboardId = "Main"
  fileprivate static let controllerStoryboardId = "Test"
  // MARK: - Public methods
  static func createModule(moduleIn: Test.DataContext.ModuleIn) -> TestViewController {
    if let controller = UIStoryboard(name: storyboardId, bundle: nil).instantiateViewController(withIdentifier: controllerStoryboardId) as? TestViewController {
      let presenter = injectPresenter(moduleIn: moduleIn)
      presenter.output = controller
      presenter.view = controller
      controller.presenter = presenter
      return controller
    } else {
      fatalError("Could not create Test module!!! Check Test assembly")
    }
  }
  // MARK: - Private injections
  fileprivate static func injectPresenter(moduleIn: Test.DataContext.ModuleIn) -> TestPresenterInput {
    let presenter = TestPresenter(moduleIn: moduleIn)
    let interactor = injectInteractor()
    interactor.output = presenter
    presenter.interactor = interactor
    let router = injectRouter()
    presenter.router = router
    return presenter
  }
  fileprivate static func injectInteractor() -> TestInteractorInput {
    return TestInteractor()
  }
  fileprivate static func injectRouter() -> TestRoutingLogic {
    return TestRouter()
  }
}
