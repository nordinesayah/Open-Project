//
//  ThanksViewController.swift
//  Open Project
//
//  Created by Nordine Sayah on 26/11/2020.
//

import UIKit

class ThanksViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func viewDidAppear(_ animated: Bool) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 10) {
            self.performSegue(withIdentifier: "segueMakeDonFinish", sender: nil)
        }
    }
}
