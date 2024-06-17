//
//  ListOfCharactersTableViewDelegate.swift
//  Architecture_mvc
//
//  Created by Genaro Velazquez on 14/06/24.
//

import Foundation
import UIKit

class ListOfCharactersTableViewDelegate: NSObject, UITableViewDelegate{
    
    // método cuando una celda ha sido pulsada
    var didTapOnCell:((Int) -> Void)?
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        120
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        didTapOnCell?(indexPath.row)
    }
        
}
