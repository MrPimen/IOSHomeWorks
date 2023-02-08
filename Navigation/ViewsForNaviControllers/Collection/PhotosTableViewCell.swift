//
//  PhotosTableViewCell.swift
//  Navigation
//
//  Created by Светлана Малюгина on 27.12.2022.
//

import Foundation
import UIKit


class PhotosTableViewCell: UITableViewCell {
    
    private let nameOfLabel: UILabel = {
        let prewiewText = UILabel()
        prewiewText.font = .systemFont(ofSize: 24, weight: .bold)
        prewiewText.numberOfLines = 1
        prewiewText.text = "Photos"
        prewiewText.textColor = .black
        prewiewText.translatesAutoresizingMaskIntoConstraints = false
        return prewiewText
    }()
    
    private let firstImageForCell: UIImageView = {
        let imageForCell = UIImageView()
        imageForCell.image = UIImage(named: "Cat1")
        imageForCell.layer.cornerRadius = 6
        imageForCell.clipsToBounds = true
        imageForCell.translatesAutoresizingMaskIntoConstraints = false
        return imageForCell
    }()
    
    private let secondImageForCell: UIImageView = {
        let imageForCell = UIImageView()
        imageForCell.image = UIImage(named: "cat2")
        imageForCell.layer.cornerRadius = 6
        imageForCell.clipsToBounds = true
        imageForCell.translatesAutoresizingMaskIntoConstraints = false
        return imageForCell
    }()
    
    private let thirdImageForCell: UIImageView = {
        let imageForCell = UIImageView()
        imageForCell.image = UIImage(named: "Cat3")
        imageForCell.layer.cornerRadius = 6
        imageForCell.clipsToBounds = true
        imageForCell.translatesAutoresizingMaskIntoConstraints = false
        return imageForCell
    }()
    
    private let forthImageForCell: UIImageView = {
        let imageForCell = UIImageView()
        imageForCell.image = UIImage(named: "cat4")
        imageForCell.layer.cornerRadius = 6
        imageForCell.clipsToBounds = true
        imageForCell.translatesAutoresizingMaskIntoConstraints = false
        return imageForCell
    }()
    
    
    
    let screenSize = UIScreen.main.bounds
    let heightImage = (UIScreen.main.bounds.width - 48) / 4

    
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        subViews()
        constraints()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func constraints() {
        NSLayoutConstraint.activate([
            
            nameOfLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 12),
            nameOfLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 12),
            //nameOfLabel.bottomAnchor.constraint(equalTo: firstImageForCell.topAnchor, constant: 12),
            
            
            firstImageForCell.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 12),
            firstImageForCell.widthAnchor.constraint(equalToConstant: heightImage),
            firstImageForCell.heightAnchor.constraint(equalToConstant: heightImage),
            firstImageForCell.topAnchor.constraint(equalTo: nameOfLabel.bottomAnchor, constant: 12),
            firstImageForCell.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10),
            
            secondImageForCell.heightAnchor.constraint(equalTo: firstImageForCell.heightAnchor, multiplier: 1),
            secondImageForCell.leadingAnchor.constraint(equalTo: firstImageForCell.trailingAnchor, constant: 8),
            secondImageForCell.widthAnchor.constraint(equalTo: firstImageForCell.widthAnchor, multiplier: 1),
            secondImageForCell.topAnchor.constraint(equalTo: nameOfLabel.bottomAnchor, constant: 12),
            
            thirdImageForCell.widthAnchor.constraint(equalTo: firstImageForCell.widthAnchor, multiplier: 1),
            thirdImageForCell.heightAnchor.constraint(equalTo: firstImageForCell.heightAnchor, multiplier: 1),
            thirdImageForCell.leadingAnchor.constraint(equalTo: secondImageForCell.trailingAnchor, constant: 8),
            thirdImageForCell.topAnchor.constraint(equalTo: nameOfLabel.bottomAnchor, constant: 12),
            
            forthImageForCell.heightAnchor.constraint(equalTo: firstImageForCell.heightAnchor, multiplier: 1),
            forthImageForCell.widthAnchor.constraint(equalTo: firstImageForCell.widthAnchor, multiplier: 1),
            forthImageForCell.leadingAnchor.constraint(equalTo: thirdImageForCell.trailingAnchor, constant: 8),
            forthImageForCell.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -12),
            forthImageForCell.topAnchor.constraint(equalTo: nameOfLabel.bottomAnchor, constant: 12),
            
        ])
        
    }
    
    func subViews() {
        contentView.addSubview(nameOfLabel)
        contentView.addSubview(firstImageForCell)
        contentView.addSubview(secondImageForCell)
        contentView.addSubview(thirdImageForCell)
        contentView.addSubview(forthImageForCell)
    }
}
