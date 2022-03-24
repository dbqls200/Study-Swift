//
//  Profile.swift
//  Landmarks
//
//  Created by 김유빈 on 2022/03/24.
//

import Foundation

struct Profile {
    var username: String
    var prefersNotifications = true
    var seasonalPhoto = Season.winter
    var goalData = Date()
    
    static let `default` = Profile(username: "g_kumar")
    
    enum Season: String, CaseIterable, Identifiable {
        case spring = "🌹"
        case summer = "🌞"
        case autumn = "🍂"
        case winter = "❄️"
        
        var id: String { rawValue }
    }
}
