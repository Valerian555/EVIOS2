//
//  pokemonData.swift
//  EVALIOS2
//
//  Created by Student08 on 08/08/2023.
//

import Foundation
import UIKit

struct Pokemon {
    var name: String
    var type: PokemonType
    var imageName: UIImage
    var generation: Int
    var pokedexNumber: Int
    var height: Float
}

enum PokemonType: String {
    case water = "Water"
    case fire = "Fire"
    case grass = "Grass"
    case flying = "Flying"
    case dragon = "Dragon"
    case poison = "Poison"
}

struct Color {
    var name: String
    var color: UIColor
}

let pokemonList = [Pokemon(name: "Bulbizarre", type: .grass, imageName: UIImage(named: "Bulbizarre")!, generation: 1, pokedexNumber: 1, height: 0.7), Pokemon(name: "Herbizarre", type: .grass, imageName: UIImage(named: "Herbizarre")!, generation: 1, pokedexNumber: 2, height: 1.0), Pokemon(name: "Florizarre", type: .grass, imageName: UIImage(named: "Florizarre")!, generation: 1, pokedexNumber: 3, height: 2.0), Pokemon(name: "Salamèche", type: .fire, imageName: UIImage(named: "Salameche")!, generation: 1, pokedexNumber: 4, height: 0.6), Pokemon(name: "Reptincel", type: .fire, imageName: UIImage(named: "Reptincel")!, generation: 1, pokedexNumber: 5, height: 1.1), Pokemon(name: "Dracaufeu", type: .fire, imageName: UIImage(named: "Dracaufeu")!, generation: 1, pokedexNumber: 6, height: 1.7)]


let colorList = [Color(name: "Blue", color: .blue), Color(name: "Red", color: .red), Color(name: "Yellow", color: .yellow), Color(name: "Gray", color: .gray), Color(name: "Green", color: .green), Color(name: "Orange", color: .orange), Color(name: "Cyan", color: .cyan)]
