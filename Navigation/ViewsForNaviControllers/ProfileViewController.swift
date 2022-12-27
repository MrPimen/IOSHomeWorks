//
//  ProfileViewController.swift
//  Navigation
//
//  Created by Светлана Малюгина on 31.10.2022.
//

import Foundation
import UIKit

class ProfileViewController: UIViewController {
    
    let profile = ProfileHeaderView()
    
    private let firstTableView: UITableView = {
        let tableView = UITableView.init(frame: CGRect.zero, style: .grouped)
        tableView.rowHeight = UITableView.automaticDimension
        tableView.register(PostTableViewCell.self, forCellReuseIdentifier: "PostTableViewCell")
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "SecondTableView")
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        constraintForTableView()
        view.backgroundColor = .white
        firstTableView.delegate = self
        firstTableView.dataSource = self
        let tapView = UITapGestureRecognizer(target: self, action: #selector(hideKeaboard))
        view.addGestureRecognizer(tapView)

    }
    
    @objc func hideKeaboard() {
        view.endEditing(true)
        
    }
        
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
    }
    
    private func constraintForTableView() {
        view.addSubview(firstTableView)
        firstTableView.backgroundColor = .white
        NSLayoutConstraint.activate([
            firstTableView.topAnchor.constraint(equalTo: view.topAnchor),
            firstTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            firstTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            firstTableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
                ])
    }
}


extension ProfileViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataForCells.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "PostTableViewCell", for: indexPath) as? PostTableViewCell else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "SecondTableViewCell", for: indexPath)
            return cell
        }
        cell.fillImage(text: dataForCells[indexPath.row].image)
        cell.fillauthor(author: dataForCells[indexPath.row].author)
        cell.filldescription(textForDesk: dataForCells[indexPath.row].description)
        cell.fillLikes(dataForLike: "Likes: \(dataForCells[indexPath.row].likes)")
        cell.fillViews(dataForViews: "Views: \(dataForCells[indexPath.row].views)")
        return cell
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

//    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
//       return 240
//
//    }

    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        return profile
    }
}

    

