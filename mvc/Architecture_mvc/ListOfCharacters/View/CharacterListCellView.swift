//
//  CharacterListCellView.swift
//  Architecture_mvc
//
//  Created by Genaro Velazquez on 13/06/24.
//

import Foundation
import UIKit
import Kingfisher

class CharacterListCellView: UITableViewCell{
    
    let CharacterImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let CharacterName: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let CharacterStatus: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let CharacterSpecie: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    required init?(coder: NSCoder) {
        fatalError("init(conder: ) has not been implemented")
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupViews()
    }
    
    func setupViews(){
        addSubview(CharacterImageView)
        addSubview(CharacterName)
        addSubview(CharacterStatus)
        addSubview(CharacterSpecie)
        
        NSLayoutConstraint.activate([
            CharacterImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12),
            CharacterImageView.topAnchor.constraint(equalTo: topAnchor, constant: 12),
            CharacterImageView.heightAnchor.constraint(equalToConstant: 80),
            CharacterImageView.widthAnchor.constraint(equalToConstant: 80),
            
            CharacterName.leadingAnchor.constraint(equalTo: CharacterImageView.trailingAnchor, constant: 20),
            CharacterName.topAnchor.constraint(equalTo: CharacterImageView.topAnchor),
            
            CharacterStatus.leadingAnchor.constraint(equalTo: CharacterName.leadingAnchor),
            CharacterStatus.topAnchor.constraint(equalTo: CharacterName.bottomAnchor, constant: 8),
            
            CharacterSpecie.leadingAnchor.constraint(equalTo: CharacterName.leadingAnchor),
            CharacterSpecie.topAnchor.constraint(equalTo: CharacterStatus.bottomAnchor, constant: 8),
            
        ])
    }
    
    func configure(_ model: CharacterModel){
        self.CharacterName.text = model.name
        self.CharacterSpecie.text = model.species
        self.CharacterStatus.text = model.status
        self.CharacterImageView.kf.setImage(with: URL(string: model.image))
    }
    
}
