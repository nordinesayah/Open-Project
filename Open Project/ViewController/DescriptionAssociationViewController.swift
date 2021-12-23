//
//  DescriptionAssociationViewController.swift
//  Open Project
//
//  Created by Nordine Sayah on 26/11/2020.
//

import UIKit

class DescriptionAssociationViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "Description", style: .plain, target: nil, action: nil)
    }

    @IBAction func btnMakeDonation(_ sender: Any) {
        self.performSegue(withIdentifier: "segueThanks", sender: nil)
    }
    
}
