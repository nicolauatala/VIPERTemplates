//
//  PlainCodeRouter.swift
//  VIPERExample
//
//  Created by Sergey Petrachkov on 20/09/2017.
//  Copyright (c) 2017 Sergey Petrachkov. All rights reserved.
//
//  This file was generated by the Actonica VIPER Xcode Templates so
//  you can apply VIPER architecture to your iOS projects
//

import UIKit

protocol PlainCodeRoutingLogic {
  func showInfoModule(from view: UIViewController)
}


class PlainCodeRouter: PlainCodeRoutingLogic {
  // MARK: Routing
  func showInfoModule(from view: UIViewController) {
    let message: String = "Contact me and ask your question.\nTogether we will probably figure out all the necessary stuff 🤔"
    let alertController = UIAlertController(title: "Go ahead!", message: message, preferredStyle: .alert)
    alertController.addAction(UIAlertAction(title: "Okay", style: .cancel, handler: nil))
    view.present(alertController, animated: true, completion: nil)
  }
}
