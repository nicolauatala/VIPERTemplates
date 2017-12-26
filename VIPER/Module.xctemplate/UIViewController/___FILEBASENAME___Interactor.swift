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

protocol ___VARIABLE_moduleName___InteractorInput: class {
  var output: ___VARIABLE_moduleName___InteractorOutput? { get set }
  func requestData(request: ___VARIABLE_moduleName___.DataContext.Request)
}

protocol ___VARIABLE_moduleName___InteractorOutput: class {
  func didReceive(response: ___VARIABLE_moduleName___.DataContext.Response)
  func didFail(with error: Error)
}

class ___VARIABLE_moduleName___Interactor: ___VARIABLE_moduleName___InteractorInput {
  let service: ___VARIABLE_moduleName___ServiceProtocol = ___VARIABLE_moduleName___Service()
  weak var output: ___VARIABLE_moduleName___InteractorOutput?
  
  // MARK: - Input
  func requestData(request: ___VARIABLE_moduleName___.DataContext.Request) {
    // Let's say we execute some async operation, then we want to be able to inform our output when the operation is finshed
    // self.service.requestSomeDataAsync(requestParams: params, 
    //                                          succes: {
    //                                            receivedData in
    //                                              self.output?.didReceive(some: receivedData)
    //                                          }),
    //                                          failure: {
    //                                            error in 
    //                                              NSLog("An error has occured while retrieving some data: \(error)")
    //                                              self.output?.didFail(error: error)
    //                                          })
    self.service.doSomeWork()
  }
}
