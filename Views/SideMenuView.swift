//
//  SideMenuView.swift
//  HamburgerMenu
//
//  Created by Vikhyath Shetty on 27/12/22.
//

import SwiftUI

struct SideMenuView: View {
    
    @Binding var isShowing: Bool
    
    var body: some View {
        
        ZStack(alignment: .leading) {
            
            LinearGradient(gradient: Gradient(colors: [CustomColors.eggPlant, CustomColors.lipstick]),
                           startPoint: .top,
                           endPoint: .bottom)
                .ignoresSafeArea(.all)
            
            VStack(alignment: .leading) {
                
                HeaderView(isShowing: $isShowing)
                    .frame(height: 180)
                
                ScrollView(.vertical, showsIndicators: false, content: {
                                        
                    ForEach(SideMenuOption.allCases, id: \.self) { row in
                        
                        NavigationLink {
                            Text(row.rawValue)
                        } label: {
                            OptionView(model: row)
                        }
                    }
                    
                })
                Spacer()
            }
        }.navigationBarHidden(true)
    }
}

