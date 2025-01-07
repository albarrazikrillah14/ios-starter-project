//
//  CartViewController.swift
//  Cart
//
//  Created by BEI-Zikri on 07/01/25.
//

import UIKit

public class CartViewController: UIViewController {
  
  @IBOutlet weak var nameLabel: UILabel!
  
  public var name: String = ""
  
  public override func viewDidLoad() {
    super.viewDidLoad()
    nameLabel.text = name
  }
  
}
