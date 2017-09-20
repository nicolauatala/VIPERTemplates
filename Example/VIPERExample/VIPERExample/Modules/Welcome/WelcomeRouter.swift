//
//  WelcomeRouter.swift
//  VIPERExample
//
//  Created by Sergey Petrachkov on 13/09/2017.
//  Copyright (c) 2017 Sergey Petrachkov. All rights reserved.
//
//  This file was generated by the Actonica VIPER Xcode Templates so
//  you can apply VIPER architecture to your iOS projects
//

import UIKit

protocol WelcomeRoutingLogic {
  func showPlainCodeModule(from view: UIViewController)
}


class WelcomeRouter: WelcomeRoutingLogic {
  // MARK: Routing
  func showPlainCodeModule(from view: UIViewController) {
    let controller = PlainCodeAssembly.createModule()
    view.navigationController?.pushViewController(controller, animated: true)
  }
}
