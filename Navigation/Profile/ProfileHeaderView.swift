//
//  ProfileHeaderView.swift
//  Navigation
//
//  Created by Светлана Малюгина on 07.11.2022.
//

import Foundation
import UIKit

class ProfileHeaderView: UIView {
    
    private let statusText: UITextField = {
        let text = UITextField()
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
    
    let imageOfCat = UIImageView()
    
    private let status: UILabel = {
        let statusPost = UILabel()
        statusPost.text = "I love kiticat and you"
        statusPost.textColor = .black
        statusPost.font = .systemFont(ofSize: 14, weight: .regular)
        return statusPost
    }()

    
    private let button: UIButton = {
        let button = UIButton()
        button.layer.shadowRadius = 4
        button.layer.cornerRadius = 4
        button.layer.shadowOpacity = 0.7
        button.layer.shadowOffset = CGSize(width: 4, height: 4)
        button.backgroundColor = .systemBlue
        button.setTitle("Set status", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        return button
        
    }()
    
    private let nameOfUser: UILabel = {
        let name = UILabel()
        name.text = "Hungry fat cat"
        name.font = .systemFont(ofSize: 18, weight: .bold)
        return name
    }()
    
    
    func showStatus() {
        button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
    }
    
    @objc func buttonPressed() {
        status.text = statusText.text!
        
        print(statusText.text!)
    }
     
    // place for UI elements using AutoLayout. I'm gonna make it in one function for convenience
    
    func placeForImage() {
        
        self.addSubview(imageOfCat)
        imageOfCat.translatesAutoresizingMaskIntoConstraints = false
        imageOfCat.topAnchor.constraint(equalTo: self.topAnchor, constant: 16).isActive = true
        imageOfCat.heightAnchor.constraint(equalToConstant: 142).isActive = true
        imageOfCat.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16).isActive = true
        imageOfCat.trailingAnchor.constraint(equalTo: self.leadingAnchor, constant: 160).isActive = true
        
        self.addSubview(nameOfUser)
        nameOfUser.translatesAutoresizingMaskIntoConstraints = false
        nameOfUser.topAnchor.constraint(equalTo: self.topAnchor, constant: 27).isActive = true
        nameOfUser.leadingAnchor.constraint(equalTo: imageOfCat.trailingAnchor, constant: 30).isActive = true
        nameOfUser.trailingAnchor.constraint(equalTo: imageOfCat.trailingAnchor, constant: 172).isActive = true
        nameOfUser.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        self.addSubview(status)
        status.translatesAutoresizingMaskIntoConstraints = false
        status.topAnchor.constraint(equalTo: self.topAnchor, constant: 68).isActive = true
        status.leadingAnchor.constraint(equalTo: imageOfCat.trailingAnchor, constant: 30).isActive = true
        status.trailingAnchor.constraint(equalTo: imageOfCat.trailingAnchor, constant: 172).isActive = true
        status.heightAnchor.constraint(equalToConstant: 23).isActive = true
        
        self.addSubview(statusText)
        statusText.translatesAutoresizingMaskIntoConstraints = false
        statusText.topAnchor.constraint(equalTo: status.bottomAnchor, constant: 10).isActive = true
        statusText.leadingAnchor.constraint(equalTo: imageOfCat.trailingAnchor, constant: 30).isActive = true
        statusText.trailingAnchor.constraint(equalTo: imageOfCat.trailingAnchor, constant: 200).isActive = true
        statusText.heightAnchor.constraint(equalToConstant: 35).isActive = true
        
        self.addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.topAnchor.constraint(equalTo: imageOfCat.bottomAnchor, constant: 16).isActive = true
        button.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16).isActive = true
        button.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16).isActive = true
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
    }

    
    override init(frame: CGRect) {
        super.init(frame: frame)
 
        self.backgroundColor = .lightGray
        
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

    
        
