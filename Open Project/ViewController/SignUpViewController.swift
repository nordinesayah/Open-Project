//
//  SignUpViewController.swift
//  Open Project
//
//  Created by Nordine Sayah on 21/11/2020.
//

import UIKit

class SignUpViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var numberOfRow = ["EMAIL", "USERNAME", "PASSWORD"]
    private var nextViewNumber = Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "S'inscrire", style: .plain, target: nil, action: nil)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numberOfRow.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell: emailCell = tableView.dequeueReusableCell(withIdentifier: "emailCell", for: indexPath) as! emailCell
            
            return cell
        }
        
        if indexPath.row == 1 {
            let cell: usernameCell = tableView.dequeueReusableCell(withIdentifier: "usernameCell", for: indexPath) as! usernameCell
            
            return cell
        }
        
        if indexPath.row == 2 {
            let cell: passwordCell = tableView.dequeueReusableCell(withIdentifier: "passwordCell", for: indexPath) as! passwordCell
            
            return cell
        }
        return UITableViewCell()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "thirdItem" {

            let nextView = segue.destination as! TabBarViewController

            switch (nextViewNumber) {
            case 1:
                nextView.selectedIndex = 2
                
            default:
                break
            }
        }
    }
    
    @IBAction func btnThirdItem(_ sender: UIButton) {
        self.nextViewNumber = 1
        self.performSegue(withIdentifier: "thirdItem", sender: self)
    }
    
}
