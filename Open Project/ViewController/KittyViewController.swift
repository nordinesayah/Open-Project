//
//  KittyViewController.swift
//  Open Project
//
//  Created by Nordine Sayah on 23/11/2020.
//

import Foundation
import UIKit

class KittyViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var numberOfRow = ["Animaux", "Art & Culture", "Autre project", "Entraide", "Entrepreneur", "Etude", "Environment", "Humanitaire", "Medical", "Sportive", "Voyage"]
    var imageName = [UIImage(named: "Association Animaux"), UIImage(named: "Association Art & Culture"), UIImage(named: "Association Autre project"), UIImage(named: "Association Entraide"), UIImage(named: "Association Entrepreneur"), UIImage(named: "Association Etude"), UIImage(named: "Association Environment"), UIImage(named: "Association Humanitaire"), UIImage(named: "Association Medical"), UIImage(named: "Association Sportive"), UIImage(named: "Association Voyage")]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "Catégorie", style: .plain, target: nil, action: nil)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numberOfRow.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell: TypeAssociationTableViewCell = tableView.dequeueReusableCell(withIdentifier: "typeAssosCell", for: indexPath) as? TypeAssociationTableViewCell {
            cell.lblNameAssociation.text = numberOfRow[indexPath.row]
            cell.imgAssociation.image = imageName[indexPath.row]
            
            return cell
        }
        return UITableViewCell()
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath)
        tableView.deselectRow(at: indexPath, animated: true)

        performSegue(withIdentifier: "typeAssociation", sender: cell)
    }
    
}
