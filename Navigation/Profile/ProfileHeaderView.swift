//
//  ProfileHeaderView.swift
//  Navigation
//
//  Created by Светлана Малюгина on 07.11.2022.
//

import Foundation
import UIKit
import SnapKit

class ProfileHeaderView: UIView {
    
    var beginPointAvatar = CGPoint()
    
    private lazy var backGroundView: UIView = {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height))
        view.alpha = 0
        view.isHidden = true
        view.backgroundColor = .systemGray6
        return view
    }()
    
    private lazy var backToAvatar: UIButton = {
        let button = UIButton()
        button.alpha = 0
        button.setImage(UIImage(systemName: "xmark", withConfiguration: UIImage.SymbolConfiguration(pointSize: 20))?.withTintColor(.black, renderingMode: .automatic), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(backToUserPage), for: .touchUpInside)
        return button
    
    }()
    
    private let imageOfCat: UIImageView = {
        let imageOfCat = UIImageView()
        imageOfCat.image = UIImage(named: "Image")
        imageOfCat.clipsToBounds = true
        imageOfCat.layer.borderWidth = 3
        imageOfCat.layer.borderColor = UIColor.white.cgColor
        imageOfCat.layer.cornerRadius = 70
        imageOfCat.translatesAutoresizingMaskIntoConstraints = false
        imageOfCat.isUserInteractionEnabled = true
        return imageOfCat
    }()
    
    var isImageIncreased = true
    
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
        self.addSubview(nameOfUser)
        self.addSubview(status)
        self.addSubview(statusText)
        self.addSubview(backGroundView)
        self.addSubview(button)
        self.addSubview(imageOfCat)
        self.addSubview(backToAvatar)
        imageOfCat.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(16)
            make.width.equalTo(144)
            make.top.equalToSuperview().inset(16)
            make.height.equalTo(144)
        }
        
        nameOfUser.snp.makeConstraints { make in
            make.leading.equalTo(imageOfCat.snp.trailing).inset(-30)
            make.width.equalTo(150)
            make.top.equalToSuperview().inset(27)
            make.height.equalTo(25)
            
        }
        
        status.snp.makeConstraints { make in
            make.leading.equalTo(imageOfCat.snp.trailing).inset(-30)
            make.width.equalTo(150)
            make.top.equalToSuperview().inset(60)
            make.height.equalTo(25)
        }
        
        statusText.snp.makeConstraints { make in
            make.top.equalTo(status.snp.bottom).inset(-20)
            make.leading.equalTo(imageOfCat.snp.trailing).inset(-30)
            make.width.equalTo(150)
            make.height.equalTo(25)
        }
        
        button.snp.makeConstraints { make in
            make.top.equalTo(imageOfCat.snp.bottom).inset(-16)
            make.bottom.equalToSuperview().inset(16)
            make.leading.equalToSuperview().inset(16)
            make.trailing.equalToSuperview().inset(16)
        }
        
        backToAvatar.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(16)
            make.trailing.equalToSuperview().inset(16)
        }
        
        NSLayoutConstraint.activate([
//            self.heightAnchor.constraint(equalToConstant: 220)
            
//            imageOfCat.topAnchor.constraint(equalTo: self.topAnchor, constant: 16),
//            imageOfCat.heightAnchor.constraint(equalToConstant: 142),
//            imageOfCat.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
//            imageOfCat.trailingAnchor.constraint(equalTo: self.leadingAnchor, constant: 160),
//
//            nameOfUser.topAnchor.constraint(equalTo: self.topAnchor, constant: 27),
//            nameOfUser.leadingAnchor.constraint(equalTo: imageOfCat.trailingAnchor, constant: 30),
//            nameOfUser.trailingAnchor.constraint(equalTo: imageOfCat.trailingAnchor, constant: 172),
//            nameOfUser.heightAnchor.constraint(equalToConstant: 25),
            
//            status.topAnchor.constraint(equalTo: self.topAnchor, constant: 68),
//            status.leadingAnchor.constraint(equalTo: imageOfCat.trailingAnchor, constant: 30),
//            status.trailingAnchor.constraint(equalTo: imageOfCat.trailingAnchor, constant: 172),
//            status.heightAnchor.constraint(equalToConstant: 23),
            
//            statusText.topAnchor.constraint(equalTo: status.bottomAnchor, constant: 10),
//            statusText.leadingAnchor.constraint(equalTo: imageOfCat.trailingAnchor, constant: 30),
//            statusText.trailingAnchor.constraint(equalTo: imageOfCat.trailingAnchor, constant: 200),
//            statusText.heightAnchor.constraint(equalToConstant: 35),
            
//            button.topAnchor.constraint(equalTo: imageOfCat.bottomAnchor, constant: 16),
//            button.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 16),
//            button.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -16),
//            button.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -16),
//
//            backToAvatar.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 16),
//            backToAvatar.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -16)
        ])
    }
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = .systemGray6
        placeForImage()
        showStatus()
        animateAvatar()
        let tapView = UITapGestureRecognizer(target: self, action: #selector(hideKeaboard))
        self.addGestureRecognizer(tapView)
        
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func hideKeaboard() {
        self.endEditing(true)
    }
    
    private func animateAvatar() {
        let gesture = UITapGestureRecognizer(target: self, action: #selector(self.fingerTapAction(_:)))
        gesture.numberOfTapsRequired = 1
        gesture.numberOfTouchesRequired = 1
        imageOfCat.addGestureRecognizer(gesture)
    }
    
    @objc func fingerTapAction(_ gestureRecogniser: UITapGestureRecognizer) {
       print("Hello, bithces")
       
        beginPointAvatar = imageOfCat.center
        let scale = UIScreen.main.bounds.width / imageOfCat.bounds.width
        
        UIView.animate(withDuration: 0.5) {
            self.imageOfCat.center = CGPoint(x: UIScreen.main.bounds.midX, y: UIScreen.main.bounds.midY - self.beginPointAvatar.y)
            self.imageOfCat.transform = CGAffineTransform(scaleX: scale, y: scale)
            self.imageOfCat.layer.cornerRadius = 0
            self.imageOfCat.layer.borderWidth = 0
            self.imageOfCat.alpha = 1
            self.backGroundView.isHidden = false
            self.backGroundView.alpha = 0.5
            self.isUserInteractionEnabled = true

        } completion: { _ in
            UIView.animate(withDuration: 0.3) {
                self.backToAvatar.alpha = 1.0

            }
        }
    }
    @objc private func backToUserPage() {
        UIImageView.animate(withDuration: 0.5) {
            UIImageView.animate(withDuration: 0.5) {
            self.backToAvatar.alpha = 0
            self.imageOfCat.center = self.beginPointAvatar
            self.imageOfCat.layer.borderWidth = 3
            self.imageOfCat.transform = CGAffineTransform(scaleX: 1, y: 1)
            self.backGroundView.alpha = 0
            self.imageOfCat.layer.cornerRadius = self.imageOfCat.frame.width / 2
        }
    } completion: { _ in
        self.imageOfCat.isUserInteractionEnabled = true
        }
        
    }
}




        
