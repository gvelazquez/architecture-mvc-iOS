//
//  CharacterDetailView.swift
//  Architecture_mvc
//
//  Created by Genaro Velazquez on 14/06/24.
//

import Foundation
import UIKit

class CharacterDetailView: UIView{
    
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
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    func setupViews(){
        
        backgroundColor = .white
        
        addSubview(CharacterImageView)
        addSubview(CharacterName)
        addSubview(CharacterStatus)
        addSubview(CharacterSpecie)
        
        NSLayoutConstraint.activate([
            CharacterImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12),
            CharacterImageView.topAnchor.constraint(equalTo: topAnchor, constant: 12),
            CharacterImageView.heightAnchor.constraint(equalToConstant: 200),
            CharacterImageView.widthAnchor.constraint(equalToConstant: 200),
            
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
