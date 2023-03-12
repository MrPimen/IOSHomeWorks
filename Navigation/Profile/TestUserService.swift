//
//  TestUserService.swift
//  Navigation
//
//  Created by Светлана Малюгина on 28.02.2023.
//

import Foundation
import UIKit

class TestUserService: UserService {
    
    var testUser = User(login: "TestUser", fullName: "Test User", status: "Check data")
    
    func checkPassword(login: String) -> User? {
        return testUser
    }
}
