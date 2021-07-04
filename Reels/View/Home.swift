//
//  Home.swift
//  Reels
//
//  Created by 张亚飞 on 2021/7/4.
//

import SwiftUI

struct Home: View {
    
    //hiding tab bar ...
    init() {
        
        UITabBar.appearance().isHidden = true
    }
    
    @State var currentTab = "play.rectangle"
    
    var body: some View {
        
        VStack {
            
            TabView (selection: $currentTab){
                
                Text("Home")
                    .tag("house.fill")
                
                ZStack{
                    
                    Color.red
                    
                    Text("Search")
                }
                
                    
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .tag("magnifyingglass")
                
                // Reels View...
                ReelsView()
                    .tag("play.rectangle")
                
                Text("Liked")
                    .tag("suit.heart")
                
                Text("Profile")
                    .tag("person.circle")
            }
            
            HStack(spacing: 0) {
                
                ForEach(["house.fill","magnifyingglass","play.rectangle","suit.heart", "person.circle"], id: \.self) { image in
                    
                    TabBarButton(image: image, isSystemImage: true, currentTab: $currentTab)
                }
            }
            .padding(.horizontal)
            .padding(.vertical, 10)
            .overlay(Divider(),alignment: .top)
            .background(currentTab == "play.rectangle" ? Color.black : .clear)
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}


//tab bar button
struct TabBarButton: View {
    
    var image: String
    var isSystemImage: Bool
    @Binding var currentTab: String
    
    var body: some View {
        
        Button {
            
            withAnimation {
                currentTab = image
            }
        } label: {
            
            ZStack {
              
                if isSystemImage {
                    
                    Image(systemName: image)
                        .font(.title2)
                }
                else {
                    
                    Image(image)
                        .resizable()
                        .renderingMode(.template)
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 25, height: 25)
                }
            }
            .foregroundColor(currentTab == image ? currentTab == "play.rectangle" ? .white : .primary : .gray)
            .frame(maxWidth: .infinity)
            
            
        }
    }
}
