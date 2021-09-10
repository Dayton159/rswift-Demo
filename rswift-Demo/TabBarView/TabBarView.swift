//
//  TabBarViewController.swift
//  rswift-Demo
//
//  Created by Dayton on 08/09/21.
//

import UIKit

class TabBarView: UITabBarController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    configureTabBar()
    setupTabBar()
  }
  
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
  }
  
  // MARK: - Configuration
  
  private func configureTabBar() {
    self.tabBar.clipsToBounds = false
    self.tabBar.tintColor = .black
    self.tabBar.accessibilityIgnoresInvertColors = true
    self.tabBar.isTranslucent = false
    self.tabBar.barTintColor = .white
  }
  
  private func setupTabBar() {
    // Configure the tabBar viewControllers
    let animal = addTabBarItem(
      title: R.string.localizable.animalTab(preferredLanguages: [AppLanguage.shared.language]),
      icon: R.image.animal(),
      AnimalsVC()
    )
    
    let color = addTabBarItem(
      title: R.string.localizable.color(preferredLanguages: [AppLanguage.shared.language]),
      icon: R.image.colors(),
      ColorsVC()
    )
    
    let setting = addTabBarItem(
      title: R.string.localizable.setting(preferredLanguages: [AppLanguage.shared.language]),
      icon: R.image.settings(),
      SettingsVC()
    )
  
    viewControllers = [animal, color, setting]
  }
  
  func addTabBarItem(title: String, icon: UIImage?, _ rootViewController: UIViewController) -> UINavigationController {
    let navigation = UINavigationController(rootViewController: rootViewController)
    navigation.tabBarItem.image = icon
    navigation.tabBarItem.title = title
    return navigation
  }
}
