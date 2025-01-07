//
//  ViewController.swift
//  App
//
//  Created by BEI-Zikri on 07/01/25.
//

import UIKit

protocol ViewControllerCoordinatorDelegate: AnyObject {
  func cart(name: String)
}

class ViewController: UIViewController {
  public weak var viewControllerCoordinatorDelegate: ViewControllerCoordinatorDelegate?

  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  @IBAction func cartButtonTapped(_ sender: Any) {
    viewControllerCoordinatorDelegate?.cart(name: "Albarra Zikrillah")
  }
  
}

