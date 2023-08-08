//
//  PickerViewController.swift
//  EVALIOS2
//
//  Created by Student08 on 08/08/2023.
//

import UIKit
import SafariServices

class PickerViewController: UIViewController {

    
    //MARK: - Properties
    @IBOutlet weak var pokemonPicker: UIPickerView!
    @IBOutlet weak var pokemonImage: UIImageView!
    @IBOutlet weak var colorView: UIView!
    var googleUrl = NSLocalizedString("google_url", comment: "")
    
    //MARK: - Setup
    override func viewDidLoad() {
        super.viewDidLoad()

        pokemonPicker.delegate = self
        pokemonPicker.dataSource = self
    }

    @IBAction func openUrl(_ sender: Any) {
        if let url = URL(string: googleUrl )
        {
        let vc = SFSafariViewController (url: url)
        present(vc, animated: true)
        }
    }
}

extension PickerViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    
    //nombre de sections
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        2
    }
    
    
    //nbr d'élément dans la section
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        switch (component) {
        case 0 : return pokemonList.count
        case 1 : return colorList.count
        default:
            return 0
        }
    }
    
    //Titre de chaque élément
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int,
                    forComponent component: Int) -> String? {
        switch (component) {
        case 0 : return pokemonList[row].name
        case 1 : return colorList[row].name
        default : return "Error"
        }
    }
    
    //Ce qu'il se passe lorsque je sélectionne un élement
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int,
                    inComponent component: Int) {
        if (component == 0){
            pokemonImage.image = pokemonList[row].imageName
        } else if (component == 1) {
            colorView.backgroundColor = colorList[row].color
        }
        
    }
}
