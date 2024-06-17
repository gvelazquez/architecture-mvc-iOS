//
//  ViewController.swift
//  Architecture_mvc
//
//  Created by Genaro Velazquez on 13/06/24.
//

import UIKit

class CharactersListViewController: UIViewController {
    
    var mainView: CharactersListView { self.view as! CharactersListView }
    let apiCLient = ListOfCharactersAPIClient()
    private var tableViewDataSource: ListOfCharactersTableViewDataSource?
    private var tableViewDelegate: ListOfCharactersTableViewDelegate?
    
    override func loadView() {
        view = CharactersListView()
        
        // Crear una instancia
        tableViewDelegate = ListOfCharactersTableViewDelegate()
        
        tableViewDataSource = ListOfCharactersTableViewDataSource(tableView: mainView.charactersTableView)
        mainView.charactersTableView.dataSource = tableViewDataSource
        mainView.charactersTableView.delegate   = tableViewDelegate
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableViewDelegate?.didTapOnCell = { [weak self] index in
            print("index:\(index)")
            
            // Presenta el nuevo viewcontroller
            guard let datasource = self?.tableViewDataSource else {
                return
            }
            
            let characterModel = datasource.characters[index]
            let characterDetailViewController = CharacterDetiailViewController(characterDetailModel: characterModel)
            self?.present(characterDetailViewController, animated: true)
        }
        
        // cuando la vista se haya cargado se hace la petición http
        Task {
            let characters = await apiCLient.getListofCharacters()
            print("Characterss:\(characters)")
            tableViewDataSource?.set(characters: characters.results)
        }
    }



}

