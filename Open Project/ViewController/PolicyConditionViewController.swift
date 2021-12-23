//
//  PolicyConditionViewController.swift
//  Open Project
//
//  Created by Nordine Sayah on 24/11/2020.
//

import UIKit

class PolicyConditionViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    init?(coder: NSCoder, name: String) {
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        tabBarItem = UITabBarItem(title: "Politique&Condition", image: UIImage(named: "Icone policy condition"), tag: 3)
    }
    
    @IBAction func policyConditionButton(_ sender: Any) {
        guard let url = URL(string: "https://www.google.fr/") else { return }
        UIApplication.shared.open(url)
    }
    
}
