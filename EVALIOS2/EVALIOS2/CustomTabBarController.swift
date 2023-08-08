//
//  CustomTabBarController.swift
//  EVALIOS2
//
//  Created by Student08 on 08/08/2023.
//

import UIKit

class CustomTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let appearance = UITabBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = UIColor(named: "gray")
        let selectedColor: UIColor = UIColor(named: "yellowPokemon")!
       
        appearance.stackedLayoutAppearance.selected.iconColor = selectedColor
        appearance.stackedLayoutAppearance.selected.titleTextAttributes =
        [.foregroundColor: selectedColor]
        tabBar.standardAppearance = appearance
        tabBar.scrollEdgeAppearance = appearance
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
