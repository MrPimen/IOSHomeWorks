//
//  User.swift
//  Navigation
//
//  Created by Светлана Малюгина on 19.02.2023.
//

import Foundation
import UIKit

class User {
    
    var login: String
    var fullName: String
    var avatar = UIImage(named: "Image")
    var status: String
    init(login: String, fullName: String, status: String) {
        self.login = login
        self.fullName = fullName
        self.status = status
    }
}

protocol UserService {
    func checkPassword(login: String )->User?
}




class CurrentUserService: UserService {
    
    var user = User(login: "FatCat", fullName: "BritainCat", status: "Love kitikat")
    
    func checkPassword(login: String) -> User? {
        if login == user.login {
            return user
        } else {
            return nil
        }
    }
}
