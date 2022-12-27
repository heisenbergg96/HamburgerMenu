//
//  HeaderView.swift
//  HamburgerMenu
//
//  Created by Vikhyath Shetty on 27/12/22.
//

import SwiftUI

struct HeaderView: View {
    
    @Binding var isShowing: Bool
    
    var body: some View {
        
        HStack(alignment: .top) {
            VStack(alignment: .leading) {
                
                Image("cap")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 64, height: 64)
                    .clipShape(Circle())
                    .padding(.bottom, 20)
                
                HStack(spacing: 14) {
                    
                    VStack(alignment: .leading) {
                        
                        Text("Vikhyath")
                            .font(Font.system(size: 24, weight: .semibold))
                        
                        Text("@vik1634")
                            .font(.system(size: 14))
                    }
                    
                    Button {
                        print("Edit button")
                    } label: {
                        Image(systemName: "square.and.pencil")
                            .resizable()
                            .frame(width: 16, height: 16)
                        
                    }

                }
                Spacer()
            }
            .foregroundColor(.white)
            .padding()
            
            Spacer()
            
            Button {
                print("Cross tapped")
                withAnimation(.spring()) {
                    isShowing.toggle()
                }
            } label: {
                Image(systemName: "xmark")
                    .frame(width: 32, height: 32)
                    .foregroundColor(.white)
                    .padding()
            }
        }
    }
}

