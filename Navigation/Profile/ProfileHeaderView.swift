//
//  ProfileHeaderView.swift
//  Navigation
//
//  Created by Светлана Малюгина on 07.11.2022.
//

import Foundation
import UIKit

class ProfileHeaderView: UIView {
    
    private let imageOfCat: UIImageView = {
        let imageOfCat = UIImageView()
        imageOfCat.image = UIImage(named: "Image")
        imageOfCat.clipsToBounds = true
        imageOfCat.layer.borderWidth = 3
        imageOfCat.layer.borderColor = UIColor.white.cgColor
        imageOfCat.layer.cornerRadius = 70
        imageOfCat.translatesAutoresizingMaskIntoConstraints = false
        return imageOfCat

    }()
    
    
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
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    
    
    private let status: UILabel = {
        let statusPost = UILabel()
        statusPost.text = "I love kiticat and you"
        statusPost.textColor = .black
        statusPost.font = .systemFont(ofSize: 14, weight: .regular)
        statusPost.translatesAutoresizingMaskIntoConstraints = false
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
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
        
    }()
    
    private let nameOfUser: UILabel = {
        let name = UILabel()
        name.text = "Hungry fat cat"
        name.font = .systemFont(ofSize: 18, weight: .bold)
        name.translatesAutoresizingMaskIntoConstraints = false
        return name
    }()
    
    
    func showStatus() {
        button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
    }
    
    
    @objc func buttonPressed() {
        status.text = statusText.text ?? "No text"
        
        print(statusText.text!)
    }
    
    func placeForImage() {
        
        self.addSubview(imageOfCat)
        self.addSubview(nameOfUser)
        self.addSubview(status)
        self.addSubview(statusText)
        self.addSubview(button)
        
        NSLayoutConstraint.activate([
            
            imageOfCat.topAnchor.constraint(equalTo: self.topAnchor, constant: 16),
            imageOfCat.heightAnchor.constraint(equalToConstant: 142),
            imageOfCat.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            imageOfCat.trailingAnchor.constraint(equalTo: self.leadingAnchor, constant: 160),

            nameOfUser.topAnchor.constraint(equalTo: self.topAnchor, constant: 27),
            nameOfUser.leadingAnchor.constraint(equalTo: imageOfCat.trailingAnchor, constant: 30),
            nameOfUser.trailingAnchor.constraint(equalTo: imageOfCat.trailingAnchor, constant: 172),
            nameOfUser.heightAnchor.constraint(equalToConstant: 25),

            status.topAnchor.constraint(equalTo: self.topAnchor, constant: 68),
            status.leadingAnchor.constraint(equalTo: imageOfCat.trailingAnchor, constant: 30),
            status.trailingAnchor.constraint(equalTo: imageOfCat.trailingAnchor, constant: 172),
            status.heightAnchor.constraint(equalToConstant: 23),

            statusText.topAnchor.constraint(equalTo: status.bottomAnchor, constant: 10),
            statusText.leadingAnchor.constraint(equalTo: imageOfCat.trailingAnchor, constant: 30),
            statusText.trailingAnchor.constraint(equalTo: imageOfCat.trailingAnchor, constant: 200),
            statusText.heightAnchor.constraint(equalToConstant: 35),

            button.topAnchor.constraint(equalTo: imageOfCat.bottomAnchor, constant: 16),
            button.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            button.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -16),
            button.bottomAnchor.constraint(equalTo: imageOfCat.bottomAnchor, constant: 66),
        ])
    }

    
    override init(frame: CGRect) {
        super.init(frame: frame)
 
        self.backgroundColor = .systemGray6
        placeForImage()
        showStatus()
    
    }
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
}




        
