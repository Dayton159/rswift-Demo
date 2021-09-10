//
//  SettingContainer.swift
//  rswift-Demo
//
//  Created by Dayton on 10/09/21.
//

import UIKit

@IBDesignable
class SettingContainer: UIView {
  @IBOutlet weak var contentView: UIView!
  @IBOutlet weak var languageLabel: UILabel!
  @IBOutlet weak var changeLanguageBtn: UIButton!
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    xibSetup()
  }

  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    xibSetup()
  }
}

extension SettingContainer {
  func xibSetup() {
    contentView = R.nib.settingContainer(owner: self)
    contentView.frame = bounds
    contentView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
    addSubview(contentView)
  }
}
