//
//  SideMenuViewModel.swift
//  HamburgerMenu
//
//  Created by Vikhyath Shetty on 27/12/22.
//

import Foundation

enum SideMenuOption: String, CaseIterable {
    
    case accountSettings = "Account Settings"
    case helpUsImprove = "Help us improve"
    case privacyPolicy = "Privacy Policy"
    
    var imageName: String {
        
        switch self {
        case .accountSettings:
            return "person.crop.circle.badge.plus"
        case .helpUsImprove:
            return "bubble.left.and.exclamationmark.bubble.right.fill"
        case .privacyPolicy:
            return "lock.square.fill"
        }
    }
}
