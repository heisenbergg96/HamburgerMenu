//
//  ContentView.swift
//  HamburgerMenu
//
//  Created by Vikhyath Shetty on 27/12/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isShowing = false
    
    var body: some View {
        
        NavigationView {
            
            ZStack {
                
                if isShowing {
                    SideMenuView(isShowing: $isShowing) { row in
                        Text(row.rawValue)
                    }
                }
                
                HomeView()
                    .cornerRadius(isShowing ? 20 : 0)
                    .scaleEffect(isShowing ? 0.9 : 1)
                    .onTapGesture {
                        if isShowing == true {
                            self.animateSideMenu()
                        }
                        
                    }
                    .offset(x: isShowing ? 200: 0, y: isShowing ? 25: 0)
                    .navigationBarItems(leading: Button(action: {
                        self.animateSideMenu()
                        
                    }, label: {
                        Image(systemName: "list.bullet")
                            .foregroundColor(.black)
                    }))
                    .navigationBarTitle("Home")
                    .navigationBarTitleDisplayMode(.inline)
            }
            
        }
    }
    
    func animateSideMenu() {
        
        withAnimation(.spring()) {
            isShowing.toggle()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct HomeView: View {
    var body: some View {
        ZStack {
            Color(.white)
            Text("Some text")
        }
        
    }
}
