//
//  DetailsViewController.swift
//  EVALIOS2
//
//  Created by Student08 on 08/08/2023.
//

import UIKit

class DetailsViewController: UIViewController {
    
    //MARK: - Properties
    
    @IBOutlet weak var pokemonImage: UIImageView!
    @IBOutlet weak var pokedexNumber: UILabel!
    @IBOutlet weak var pokemonNameLabel: UILabel!
    @IBOutlet weak var pokemonTypeLabel: UILabel!
    @IBOutlet weak var pokemonHeightLabel: UILabel!
    @IBOutlet weak var pokemonGenLabel: UILabel!
    
    var pokemon: Pokemon?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pokemonImage.image = pokemon?.imageName
        pokemonNameLabel.text = pokemon?.name
        pokedexNumber.text = String(pokemon?.pokedexNumber ?? 0)
        pokemonTypeLabel.text = pokemon?.type.rawValue
        pokemonHeightLabel.text = String(pokemon?.height ?? 0)
        pokemonGenLabel.text = String(pokemon?.generation ?? 0)
        
    }
    
}
