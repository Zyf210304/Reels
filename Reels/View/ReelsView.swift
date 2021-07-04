//
//  ReelsView.swift
//  Reels
//
//  Created by 张亚飞 on 2021/7/4.
//

import SwiftUI
import AVKit

struct ReelsView: View {
    
    @State var currentReel = ""
    
    //extracting avplayer from media file...
    @State var reels = MediaFileJSON.map { item -> Reel in
        
        let url = Bundle.main.path(forResource: item.url, ofType: "mp4") ?? ""
        
        let player = AVPlayer(url: URL(fileURLWithPath: url))
        return Reel(player: player, mediaFile: item)
    }
    
    var body: some View {
        
        // setting width and height for rotated view...
        GeometryReader { proxy in
            
            let size = proxy.size
            
            
            
            TabView(selection: $currentReel) {
                
                ForEach($reels) { $reel in
                    
                    ReelsPlayer(reel: $reel)
                    .frame(width: size.width)
                    .rotationEffect(.init(degrees: -90))
                    .ignoresSafeArea(.all, edges: .top)
                }
            }
            .rotationEffect(.init(degrees: 90))
            .frame(width:size.height)
            .tabViewStyle(.page(indexDisplayMode: .never))
            .frame(width: size.width)
        }
        .ignoresSafeArea(.all, edges: .top)
        .background(Color.black.ignoresSafeArea())
        
    }
}

struct ReelsView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ReelsPlayer: View {
    
    @Binding var reel: Reel
    
    var body: some View {
        
        ZStack {
            
            if let player = reel.player {
                
                CustomVideoPlayer(player: player)
            }
           
            VStack{


            }
            .frame(maxHeight: .infinity, alignment: .bottom)
        }
    }
}
