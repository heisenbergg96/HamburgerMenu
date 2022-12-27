//
//  SideMenuView.swift
//  HamburgerMenu
//
//  Created by Vikhyath Shetty on 27/12/22.
//

import SwiftUI

struct SideMenuView<Destination: View>: View {
    
    @Binding var isShowing: Bool
    
    let destination: (SideMenuOption) -> Destination
    
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
                            self.destination(row)
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

