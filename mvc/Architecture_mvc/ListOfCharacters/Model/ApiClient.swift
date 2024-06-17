//
//  ApiClient.swift
//  Architecture_mvc
//
//  Created by Genaro Velazquez on 13/06/24.
//

import Foundation


final class ListOfCharactersAPIClient{
    func getListofCharacters() async -> CharacterModelResponse{
        let url = URL(string: "https://rickandmortyapi.com/api/character")!
        let (data, _) = try! await URLSession.shared.data(from: url)
        return try! JSONDecoder().decode(CharacterModelResponse.self, from: data)
    }
}
