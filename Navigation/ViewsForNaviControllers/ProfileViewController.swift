//
//  ProfileViewController.swift
//  Navigation
//
//  Created by Светлана Малюгина on 31.10.2022.
//

import Foundation
import UIKit

class ProfileViewController: UIViewController {
    
    let user: User
    init(user: User) {
        self.user = user
        super.init(nibName: nil, bundle: nil)
    }
    required init?(coder: NSCoder) {
        fatalError("Hi")
    }
    

    let profile = ProfileHeaderView()
    
    private let firstTableView: UITableView = {
        let tableView = UITableView.init(frame: CGRect.zero, style: .grouped)
        tableView.rowHeight = UITableView.automaticDimension
        tableView.register(PostTableViewCell.self, forCellReuseIdentifier: "PostTableViewCell")
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "SecondTableView")
        tableView.register(PhotosTableViewCell.self, forCellReuseIdentifier: "PhotosTableViewCell")
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.allowsSelection = true
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        constraintForTableView()
        view.backgroundColor = .white
        firstTableView.delegate = self
        firstTableView.dataSource = self
        dataForProfile()
        
        #if DEBUG
        view.backgroundColor = .white
        #else
        view.backgroundColor = .red
        #endif

  
    }
    
    @objc func hideKeaboard() {
        view.endEditing(true)
        
    }
    
    
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        navigationController?.navigationBar.isHidden = true
        
    }
    
    func dataForProfile() {
        
        profile.imageOfCat.image = user.avatar
        profile.status.text = user.status
        profile.nameOfUser.text = user.fullName


    }

    
    private func constraintForTableView() {
        view.addSubview(firstTableView)
        firstTableView.backgroundColor = .white
        NSLayoutConstraint.activate([
            firstTableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            firstTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            firstTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            firstTableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
                ])
    }
}


extension ProfileViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 1 {
            return dataForCells.count
        } else {
            return 1
        }
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let photoCell = PhotosTableViewCell()
        
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "PostTableViewCell", for: indexPath) as? PostTableViewCell else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "SecondTableViewCell", for: indexPath)
            return cell
        }
        cell.fillImage(text: dataForCells[indexPath.row].image)
        cell.fillauthor(author: dataForCells[indexPath.row].author)
        cell.filldescription(textForDesk: dataForCells[indexPath.row].description)
        cell.fillLikes(dataForLike: "Likes: \(dataForCells[indexPath.row].likes)")
        cell.fillViews(dataForViews: "Views: \(dataForCells[indexPath.row].views)")
        
        if indexPath.section == 1 {
            return cell
        } else {
            return photoCell
        }
        
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }

    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        if section == 0 {
            return profile
        }
        return nil
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let photosGallery = PhotosViewController()
        tableView.deselectRow(at: indexPath, animated: true)
        if indexPath.section == 0 {
            navigationController?.pushViewController(photosGallery, animated: true)
        } else {
            print("Hello")
        }
    }
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return "hello"
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return CGFloat()
    }
}

    

