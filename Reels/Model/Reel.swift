//
//  Reel.swift
//  Reels
//
//  Created by 张亚飞 on 2021/7/4.
//

import SwiftUI
import AVKit

struct Reel: Identifiable {
   
    var id = UUID().uuidString
    var player: AVPlayer?
    var mediaFile: MediaFile
    
}
