//
//  PokemonViewController.swift
//  EVALIOS2
//
//  Created by Student08 on 08/08/2023.
//

import UIKit


class PokemonViewController: UIViewController {
    //MARK: - Properties
    
    @IBOutlet weak var pokemonTableView: UITableView!
    
    //MARK: - Setup
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Pokemon"
        pokemonTableView.dataSource = self
        pokemonTableView.delegate = self
        
        pokemonTableView.register(UINib(nibName: "PokemonTableViewCell", bundle: nil),
                                  forCellReuseIdentifier: "PokemonTableViewCell")
    }
}

//MARK: - TableView Extension

extension PokemonViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pokemonList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) ->
    UITableViewCell {
        
        let customCell = tableView.dequeueReusableCell(withIdentifier:
                                                        "PokemonTableViewCell", for: indexPath) as! PokemonTableViewCell
        
        //Configuration UI dans setup
        customCell.pokemonImage.image = pokemonList[indexPath.row].imageName
        customCell.pokemonName.text = pokemonList[indexPath.row].name
        return customCell
    }
    
    //gérer le tap sur une cellule
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath:
                   IndexPath) {
        //instancier le ViewController de destination
        let detailsViewController = storyboard?.instantiateViewController(identifier: "DetailsViewController") as! DetailsViewController
        
        detailsViewController.pokemon = pokemonList[indexPath.row]
        
        //méthode permettant la navigation
        navigationController?.pushViewController(detailsViewController, animated: true)
    }
    
}
