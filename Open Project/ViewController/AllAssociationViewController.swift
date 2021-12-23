//
//  AssociationViewController.swift
//  Open Project
//
//  Created by Nordine Sayah on 25/11/2020.
//

import UIKit

class AllAssociationViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var numberOfRow = ["Association"]
//    var imageName = [UIImage(named: "Association Animaux")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "Cagnotte", style: .plain, target: nil, action: nil)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numberOfRow.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell: AssociationTableViewCell = tableView.dequeueReusableCell(withIdentifier: "associationCell", for: indexPath) as? AssociationTableViewCell {
            
            return cell
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath)
        tableView.deselectRow(at: indexPath, animated: true)

        performSegue(withIdentifier: "descriptionAssos", sender: cell)
    }
    
}
