//
//  PriceViewController.swift
//  Open Project
//
//  Created by Nordine Sayah on 22/11/2020.
//

import UIKit

class PriceViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    init?(coder: NSCoder, name: String) {
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        tabBarItem = UITabBarItem(title: "Découvrir nos tarifs ?", image: UIImage(named: "Icone price"), tag: 2)
    }
    
}
