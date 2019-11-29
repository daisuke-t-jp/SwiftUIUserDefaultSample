//
//  UserDefaultManager.swift
//  SwiftUIUserDefaultSample
//
//  Created by Daisuke TONOSAKI on 2019/11/29.
//  Copyright © 2019 Daisuke TONOSAKI. All rights reserved.
//

import Foundation

class UserDefaultManager {
    static let sharedInstance = UserDefaultManager()
    
    @UserDefault("text", defaultValue: "")
    var text: String
}
