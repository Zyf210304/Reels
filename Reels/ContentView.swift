//
//  ContentView.swift
//  Reels
//
//  Created by 张亚飞 on 2021/7/1.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack (spacing: 20){
            
            Image(systemName: "pencil.tip.crop.circle.badge.minus")
                .foregroundColor(.red)
            
            
            Image(systemName: "pencil.tip.crop.circle.badge.minus")
                .foregroundStyle(.red, .black)
            
            Image(systemName: "sunrise.fill")
                .foregroundStyle(.red, .black)
            
            Image(systemName: "moon.zzz.fill")
                .foregroundStyle(.red, .black, .orange)
            
            Image(systemName: "thermometer.sun.fill")
                .foregroundStyle(.red, .yellow, .orange)
            
            Image(systemName: "filemenu.and.selection")
                .foregroundStyle(.red, .yellow)
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
