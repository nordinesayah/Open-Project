//
//  ForgotPasswordViewController.swift
//  Open Project
//
//  Created by Nordine Sayah on 21/11/2020.
//

import UIKit

class ForgotPasswordViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var numberOfRow = ["EMAIL"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
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

        return UITableViewCell()
    }
}
