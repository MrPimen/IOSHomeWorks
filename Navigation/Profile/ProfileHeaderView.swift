//
//  ProfileHeaderView.swift
//  Navigation
//
//  Created by Светлана Малюгина on 07.11.2022.
//

import Foundation
import UIKit

class ProfileHeaderView: UIView {
    
    // Экзмепляр ИмайджВью
    
    let imageStatus = UIImageView(frame: CGRect(x: 0, y: 0, width: 450, height: 90))
    
    // Экземпляр текстФилда
    
    private let statusText: UITextField = {
        let text = UITextField()
        text.frame = CGRect(x: 200, y: 211, width: 175, height: 40)
        text.textColor = .black
        text.layer.borderColor = UIColor.black.cgColor
        text.layer.borderWidth = 1
        text.layer.cornerRadius = 12
        text.font = .systemFont(ofSize: 15, weight: .regular)
        text.placeholder = "Enter your status"
        text.backgroundColor = .white
        text.textAlignment = .center
        return text
    }()
    
    let imageOfCat = UIImageView(frame: CGRect(x: 16, y: 110, width: 142, height: 142))
    
    private let status: UILabel = {
        let statusPost = UILabel()
        statusPost.frame = CGRect(x: 200, y: 168, width: 145, height: 35)
        statusPost.text = "I love kiticat and you"
        statusPost.textColor = .black
        statusPost.font = .systemFont(ofSize: 14, weight: .regular)
        return statusPost
    }()
   
    // Add button
    
    private let button: UIButton = {
        let button = UIButton()
        button.frame = CGRect(x: 16, y: 272, width: 380, height: 50)
        button.layer.shadowRadius = 4
        button.layer.cornerRadius = 4
        button.layer.shadowOpacity = 0.7
        button.layer.shadowOffset = CGSize(width: 4, height: 4)
        button.backgroundColor = .systemBlue
        button.setTitle("Set status", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        return button
        
    }()
    
    func showStatus() {
        button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
    }
    
    @objc func buttonPressed() {
        status.text = statusText.text!
        
        print(statusText.text!)
    }
    

    private let nameOfUser: UILabel = {
        let name = UILabel()
        name.text = "Hungry fat cat"
        name.font = .systemFont(ofSize: 18, weight: .bold)
        name.frame = CGRect(x: 200, y: 113, width: 150, height: 60)
        return name
    }()

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        
        
        self.backgroundColor = .lightGray
        self.addSubview(button)
        self.addSubview(imageOfCat)
        self.addSubview(nameOfUser)
        self.addSubview(status)
        self.addSubview(statusText)
        self.addSubview(imageStatus)
        imageStatus.backgroundColor = .white
        
        
        imageOfCat.image = UIImage(named: "Image")
        imageOfCat.clipsToBounds = true
        imageOfCat.layer.borderWidth = 3
        imageOfCat.layer.borderColor = UIColor.white.cgColor
        imageOfCat.layer.cornerRadius = 70
        
    }
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
}

    
        
