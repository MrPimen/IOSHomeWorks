//
//  PhotosViewController.swift
//  Navigation
//
//  Created by Светлана Малюгина on 28.12.2022.
//

import Foundation
import UIKit

class PhotosViewController: UIViewController {
    
    
    private let collection: UICollectionView = {
        let layoutCV = UICollectionViewFlowLayout()
        layoutCV.scrollDirection = .vertical
        let collection = UICollectionView(frame: .zero, collectionViewLayout: layoutCV)
        let insets = UIEdgeInsets(top: 8, left: 8, bottom: 8, right: 8)
        collection.translatesAutoresizingMaskIntoConstraints = false
        collection.contentInset = insets
        collection.backgroundColor = .white
        collection.register(PhotosCollectionViewCell.self, forCellWithReuseIdentifier: PhotosCollectionViewCell.reuseID)
        return collection
        
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.isHidden = false
        navigationItem.title = "Photo Gallery"
        navigationController?.navigationBar.backgroundColor = .systemGray6
        view.backgroundColor = .systemGray6
        subViews()
        contraints()
        collection.dataSource = self
        collection.delegate = self
        
    }
    
    
    func contraints() {
        NSLayoutConstraint.activate([
            collection.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            collection.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            collection.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            collection.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
    
    func subViews() {
        view.addSubview(collection)
    }
}

extension PhotosViewController: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataForCollection.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: PhotosCollectionViewCell.reuseID, for: indexPath) as? PhotosCollectionViewCell else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "DefeultCell", for: indexPath)
            
            return cell
        }
        cell.fillImage(text: dataForCollection[indexPath.row].image)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: (UIScreen.main.bounds.width - 37) / 3, height: (UIScreen.main.bounds.width - 30) / 3)
    }

    
}
