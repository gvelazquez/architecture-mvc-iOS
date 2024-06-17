//
//  CharactersListView.swift
//  Architecture_mvc
//
//  Created by Genaro Velazquez on 13/06/24.
//

import Foundation
import UIKit

class CharactersListView: UIView{
    
    let charactersTableView: UITableView = {
        let tableview = UITableView()
        tableview.translatesAutoresizingMaskIntoConstraints = false
        tableview.register(CharacterListCellView.self, forCellReuseIdentifier: "CharacterListCellView")
        return tableview
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupSubView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupSubView(){
        addSubview(charactersTableView)
        
        NSLayoutConstraint.activate([
            charactersTableView.leadingAnchor.constraint(equalTo: leadingAnchor),
            charactersTableView.trailingAnchor.constraint(equalTo: trailingAnchor),
            charactersTableView.topAnchor.constraint(equalTo: topAnchor),
            charactersTableView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
    
}
