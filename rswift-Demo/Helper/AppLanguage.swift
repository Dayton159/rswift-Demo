//
//  AppLanguage.swift
//  rswift-Demo
//
//  Created by Dayton on 08/09/21.
//

import Foundation

enum Language: String {
    case english = "en"
    case indonesia = "id"
    
    static func map(value: String) -> Self {
        switch value {
        case Language.english.rawValue:
            return .english
        case Language.indonesia.rawValue:
            return .indonesia
        default:
            return .english
        }
    }
}

class AppLanguage {
  static let shared = AppLanguage()
  private var currentLanguage: Language = .indonesia
  
  var language: String {
    get { return self.currentLanguage.rawValue }
    set { self.currentLanguage = Language.map(value: newValue) }
  }
}
