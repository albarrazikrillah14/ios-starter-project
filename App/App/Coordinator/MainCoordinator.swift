//
//  MainCoordinator.swift
//  App
//
//  Created by BEI-Zikri on 07/01/25.
//

import UIKit

public protocol Coordinator: AnyObject {
  var childCoordinators: [Coordinator] { get set }
  var navigationController: UINavigationController { get set }
  
  func start()
}

final class MainCoordinator: Coordinator, ViewControllerCoordinatorDelegate {
  
  var childCoordinators = [Coordinator]()
  
  var navigationController: UINavigationController
  
  init(navController: UINavigationController) {
    self.navigationController = navController
  }
  
  func start() {
    let storyboard = UIStoryboard(name: "Main", bundle: nil)
    let viewController = storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
    viewController.viewControllerCoordinatorDelegate = self
    navigationController.pushViewController(viewController, animated: true)
  }
  
  func cart(name: String) {
    let coordinator = CartCoordinator(navigationController)
    childCoordinators.append(coordinator)
    coordinator.start(with: name)
  }
}
