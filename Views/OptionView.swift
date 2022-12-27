//
//  OptionView.swift
//  HamburgerMenu
//
//  Created by Vikhyath Shetty on 27/12/22.
//

import SwiftUI

struct OptionView: View {
    
    let model: SideMenuOption
    
    var body: some View {
        
        HStack(spacing: 16) {
            
            Image(systemName: model.imageName)
                .frame(width: 24, height: 24)
                
            Text(model.rawValue)
                .font(.system(size: 15, weight: .semibold))
        }
        .foregroundColor(.white)
        .padding()
    }
}
