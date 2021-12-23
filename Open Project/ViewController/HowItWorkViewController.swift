//
//  HowItWorkViewController.swift
//  Open Project
//
//  Created by Nordine Sayah on 22/11/2020.
//

import UIKit

class HowItWorkViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    init?(coder: NSCoder, name: String) {
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        tabBarItem = UITabBarItem(title: "Comment ça marche ?", image: UIImage(named: "Icone about"), tag: 1)
    }
    
}
