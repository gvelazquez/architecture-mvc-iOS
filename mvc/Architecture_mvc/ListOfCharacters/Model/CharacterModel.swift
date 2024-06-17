//
//  CharacterModel.swift
//  Architecture_mvc
//
//  Created by Genaro Velazquez on 13/06/24.
//

import Foundation

// NOTA: LOs modelos de dominio si no se conforman el protocolo decodable marcara error
struct CharacterModel:Decodable{
    let name: String
    let status: String
    let species: String
    let image: String
}
