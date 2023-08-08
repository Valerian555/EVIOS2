//
//  CustomNavigationController.swift
//  EVALIOS2
//
//  Created by Student08 on 08/08/2023.
//

import UIKit

class CustomNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = UIColor(named: "gray")!
        appearance.titleTextAttributes = [.foregroundColor: UIColor(named: "yellowPokemon")!]
        navigationBar.compactAppearance = appearance
        navigationBar.standardAppearance = appearance
        navigationBar.scrollEdgeAppearance = appearance
        navigationBar.tintColor = UIColor(named: "yellowPokemon")!
    
        }
    
    

}
