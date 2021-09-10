//
//  DummyAnimals.swift
//  rswift-Demo
//
//  Created by Dayton on 08/09/21.
//

import UIKit

class DummyAnimals {
  static func load(completion: @escaping ([Animal]) -> Void) {
    completion([
      Animal(name: R.string.localizable.elephant(preferredLanguages: [AppLanguage.shared.language]),
             photo: R.image.elephant()),
      
      Animal(name: R.string.localizable.dolphin(preferredLanguages: [AppLanguage.shared.language]),
             photo: R.image.dolphin()),
      
      Animal(name: R.string.localizable.fox(preferredLanguages: [AppLanguage.shared.language]),
             photo: R.image.fox()),
      
      Animal(name: R.string.localizable.elephant(preferredLanguages: [AppLanguage.shared.language]),
             photo: R.image.elephant()),
      
      Animal(name: R.string.localizable.rhino(preferredLanguages: [AppLanguage.shared.language]),
             photo: R.image.rhino()),
      
      Animal(name: R.string.localizable.seahorse(preferredLanguages: [AppLanguage.shared.language]),
             photo: R.image.seahorse()),
      
      Animal(name: R.string.localizable.squirrel(preferredLanguages: [AppLanguage.shared.language]),
             photo: R.image.squirrel()),
      
      Animal(name: R.string.localizable.walrus(preferredLanguages: [AppLanguage.shared.language]),
             photo: R.image.walrus()),
      
      Animal(name: R.string.localizable.wolf(preferredLanguages: [AppLanguage.shared.language]),
             photo: R.image.wolf()),
      
      Animal(name: R.string.localizable.jellyfish(preferredLanguages: [AppLanguage.shared.language]),
             photo: R.image.jellyfish())
    ])
  }
}
