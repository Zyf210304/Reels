//
//  MediaFile.swift
//  Reels
//
//  Created by 张亚飞 on 2021/7/4.
//

import SwiftUI

struct MediaFile: Identifiable {
    
    var id = UUID().uuidString
    var url: String
    var title: String
    var isExpanded: Bool = false
}

var MediaFileJSON = [

    MediaFile(url: "Reel1", title: "Apple AirTag...."),
    MediaFile(url: "Reel2", title: "omg...Animal crossing"),
    MediaFile(url: "Reel3", title: "So hyped for Halo"),
    MediaFile(url: "Reel4", title: "SponsorShip....")

]
