//
//  PrimaryButton.swift
//  Common
//
//  Created by BEI-Zikri on 07/01/25.
//

import UIKit

@IBDesignable
public final class PrimaryButton: UIView {
  @IBOutlet var contentView: UIView!
  @IBOutlet weak var button: UIButton!
  
  var callback: () -> Void = {}
  
  override public init(frame: CGRect) {
    super.init(frame: frame)
    commonInit()
  }
  
  required public init?(coder: NSCoder) {
    super.init(coder: coder)
    commonInit()
  }
  
  @discardableResult
  public func setTitle(title: String) {
    button.setTitle(title, for: .normal)
  }
  
  @discardableResult
  public func onTap(callback: @escaping () -> Void) {
        self.callback = callback
    }
  
  @IBAction func buttonTapped(_ sender: Any) {
    callback()
  }
  
  fileprivate func commonInit() {
    let bundle = Bundle(for: PrimaryButton.self)
    bundle.loadNibNamed(String(describing: PrimaryButton.self), owner: self, options: nil)
    
    addSubview(contentView)
    contentView.frame = self.bounds
    contentView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
  }
}
