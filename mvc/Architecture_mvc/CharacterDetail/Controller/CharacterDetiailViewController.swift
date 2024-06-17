//
//  CharacterDetiailViewController.swift
//  Architecture_mvc
//
//  Created by Genaro Velazquez on 14/06/24.
//

import Foundation
import UIKit

class CharacterDetiailViewController: UIViewController {
    
    var mainView: CharacterDetailView { self.view as! CharacterDetailView }
    
    init(characterDetailModel: CharacterModel){
        super.init(nibName: nil, bundle: nil)
        mainView.configure(characterDetailModel)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        view = CharacterDetailView()
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }



}
