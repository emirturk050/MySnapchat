//
//  UserSingleton.swift
//  SnapchatClone
//
//  Created by Emir Türk on 29.03.2023.
//

import Foundation

class UserSingleton {
    
    static let sharedUserInfo = UserSingleton()
    
    var email = ""
    var username = ""
    
    private init() {
        
    }
}
