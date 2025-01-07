//
//  CartCoordinator.swift
//  App
//
//  Created by BEI-Zikri on 07/01/25.
//

import UIKit
import Cart

final class CartCoordinator: Coordinator {
  
  
  var childCoordinators = [Coordinator]()
  var navigationController: UINavigationController
  
  init(_ nc: UINavigationController) {
    self.navigationController = nc
  }
  
  func start() {}
  
  func start(with name: String) {
    let bundle = Bundle(for: CartViewController.self)
    
    let storyboard = UIStoryboard(name: "Cart", bundle: bundle)
    
    if let vc = storyboard.instantiateViewController(withIdentifier: "CartViewController") as? CartViewController {
      vc.name = name
      navigationController.pushViewController(vc, animated: true)
    } else {
      print("Failed to instantiate CartViewController")
    }
  }
}
