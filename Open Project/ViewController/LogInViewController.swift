//
//  LogInViewController.swift
//  Open Project
//
//  Created by Nordine Sayah on 21/11/2020.
//

import UIKit

class LogInViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var numberOfRow = ["USERNAME/EMAIL", "PASSWORD"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "Login", style: .plain, target: nil, action: nil)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numberOfRow.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell: usernameEmailCell = tableView.dequeueReusableCell(withIdentifier: "usernameEmailCell", for: indexPath) as! usernameEmailCell
            
            return cell
        }
        
        if indexPath.row == 1 {
            let cell: passwordCell = tableView.dequeueReusableCell(withIdentifier: "passwordCell", for: indexPath) as! passwordCell
            
            return cell
        }
        return UITableViewCell()
    }
    
}
