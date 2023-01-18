//
//  PhotosCollectionViewCell.swift
//  Navigation
//
//  Created by Светлана Малюгина on 28.12.2022.
//

import Foundation
import UIKit

class PhotosCollectionViewCell: UICollectionViewCell {
    
    let dataForCell = [String]()
    
    let heigtForCell = (UIScreen.main.bounds.width - 24) / 3
    
    static let reuseID = "PhotosCollectionViewCell"
    
    private let imageInCollection: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFill
        image.translatesAutoresizingMaskIntoConstraints = false
        image.clipsToBounds = true
        return image
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(imageInCollection)
        constraints()
        backgroundColor = .cyan
    }
    
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func fillImage(text: String) {
        imageInCollection.image = UIImage(named: text)
    }
    
    
    func constraints() {
        NSLayoutConstraint.activate([
            imageInCollection.topAnchor.constraint(equalTo: contentView.topAnchor),
            imageInCollection.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            imageInCollection.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            imageInCollection.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ])
    }
}
