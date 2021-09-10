//
//  SettingsVC.swift
//  rswift-Demo
//
//  Created by Dayton on 09/09/21.
//

import UIKit

class SettingsVC: UIViewController {
  
  @IBOutlet weak var languageSetting: SettingContainer!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    self.navigationItem.title = R.string.localizable.setting(preferredLanguages: [AppLanguage.shared.language])
    self.setupUI()
  }
  
  private func setupUI() {
    languageSetting.languageLabel.text = R.string.localizable.language(preferredLanguages: [AppLanguage.shared.language])
    languageSetting.changeLanguageBtn.setTitle(R.string.localizable.changeLanguage(preferredLanguages: [AppLanguage.shared.language]), for: .normal)
    languageSetting.changeLanguageBtn.addTarget(self, action: #selector(didTapChangeLanguage(_:)), for: .touchUpInside)
  }
  
  //MARK: - Selector
  @objc func didTapChangeLanguage(_ sender: UIButton) {
    self.showErrorPopUp()
  }
  
  //MARK: - Helper
  private func showErrorPopUp() {
    let alert = UIAlertController(title: R.string.localizable.changeLanguage(preferredLanguages: [AppLanguage.shared.language]), message: nil, preferredStyle: .actionSheet)
    
    let indonesia = UIAlertAction(title: "Indonesia", style: .default) { _ in
      AppLanguage.shared.language = Language.indonesia.rawValue
      self.resetRootView()
    }
    
    let english = UIAlertAction(title: "English", style: .default) { _ in
      AppLanguage.shared.language = Language.english.rawValue
      self.resetRootView()
    }
    
    let cancel = UIAlertAction(title: R.string.localizable.cancel(preferredLanguages: [AppLanguage.shared.language]), style: .destructive) { _ in
    }
    
    alert.addAction(indonesia)
    alert.addAction(english)
    alert.addAction(cancel)
    present(alert, animated: true, completion: nil)
  }
  
  private func resetRootView() {
    guard let sceneDelegate = self.view.window?.windowScene?.delegate as? SceneDelegate else { return }
    sceneDelegate.window?.rootViewController = TabBarView()
    sceneDelegate.window?.makeKeyAndVisible()
  }
}
