//
//  PostTableViewCell.swift
//  Navigation
//
//  Created by Светлана Малюгина on 08.12.2022.
//

import Foundation
import UIKit

class PostTableViewCell: UITableViewCell {
    
    
    private let prewiewText: UILabel = {
        let prewiewText = UILabel()
        prewiewText.font = .systemFont(ofSize: 20, weight: .bold)
        prewiewText.numberOfLines = 2
        prewiewText.textColor = .black
        prewiewText.translatesAutoresizingMaskIntoConstraints = false
        return prewiewText
    }()
    
    private let imageForCell: UIImageView = {
        let imageForCell = UIImageView()
        imageForCell.contentMode = .scaleAspectFit
        imageForCell.backgroundColor = .black
        imageForCell.translatesAutoresizingMaskIntoConstraints = false
        return imageForCell
    }()
    
    private let likes: UILabel = {
        let likes = UILabel()
        likes.textColor = .black
        likes.translatesAutoresizingMaskIntoConstraints = false
        likes.font = .systemFont(ofSize: 16, weight: .regular)
        return likes
    }()
    
    private let descriptionForPost: UILabel = {
        let descriptionForPost = UILabel()
        descriptionForPost.textColor = .systemGray
        descriptionForPost.numberOfLines = 0
        descriptionForPost.font = .systemFont(ofSize: 14, weight: .regular)
        descriptionForPost.textAlignment = .left
        descriptionForPost.translatesAutoresizingMaskIntoConstraints = false
        return descriptionForPost
        
    }()
    
    private let views: UILabel = {
        let views = UILabel()
        views.translatesAutoresizingMaskIntoConstraints = false
        views.font = .systemFont(ofSize: 16, weight: .regular)
        return views
    }()
    
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentMode = .scaleAspectFit
        backgroundColor = .white
        addSubviews()
        cellConstraints()
        
    }
    
    func fillImage(text: String) {
        imageForCell.image = UIImage(named: text)
    }
    
    func fillauthor(author: String) {
        prewiewText.text = author
    }
    
    func filldescription(textForDesk: String) {
        descriptionForPost.text = textForDesk
    }
    
    func fillLikes(dataForLike: String) {
        likes.text = dataForLike
    }
    
    func fillViews(dataForViews: String) {
        views.text = dataForViews
    }
    
    func cellConstraints() {
        NSLayoutConstraint.activate([
            
            prewiewText.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            prewiewText.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            prewiewText.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -35),
            prewiewText.heightAnchor.constraint(equalToConstant: 20),
            
            imageForCell.topAnchor.constraint(equalTo: prewiewText.bottomAnchor, constant: 16),
            imageForCell.heightAnchor.constraint(equalTo: contentView.widthAnchor),
            imageForCell.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            imageForCell.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            
            descriptionForPost.topAnchor.constraint(equalTo: imageForCell.bottomAnchor, constant: 13),
            descriptionForPost.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            descriptionForPost.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            
            likes.topAnchor.constraint(equalTo: descriptionForPost.bottomAnchor, constant: 20),
            likes.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            likes.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -16),
            
            views.topAnchor.constraint(equalTo: descriptionForPost.bottomAnchor, constant: 20),
            views.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            views.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -16)
        ])
       
    }
    
    func addSubviews() {
        contentView.addSubview(prewiewText)
        contentView.addSubview(imageForCell)
        contentView.addSubview(descriptionForPost)
        contentView.addSubview(likes)
        contentView.addSubview(views)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    
}

