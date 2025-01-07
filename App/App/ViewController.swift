//
//  ViewController.swift
//  App
//
//  Created by BEI-Zikri on 07/01/25.
//

import UIKit
import Common

protocol ViewControllerCoordinatorDelegate: AnyObject {
  func cart(name: String)
}

class ViewController: UIViewController {
  public weak var viewControllerCoordinatorDelegate: ViewControllerCoordinatorDelegate?
 
  @IBOutlet weak var primaryButton: PrimaryButton!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    primaryButton.setTitle(title: "Primary Button")

    primaryButton.onTap {
      
    }
  }
  
  @IBAction func cartButtonTapped(_ sender: Any) {
    viewControllerCoordinatorDelegate?.cart(name: "Albarra Zikrillah")
  }
  
}

