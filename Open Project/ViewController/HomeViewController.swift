//
//  homeController.swift
//  Open Project
//
//  Created by Nordine Sayah on 15/11/2020.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var SlideImage1: UIImageView!
    @IBOutlet weak var SlideImage2: UIImageView!
    @IBOutlet weak var SlideImage3: UIImageView!
    
    var imagesNames1 = ["Grand Icone Animaux", "Grand Icone Art & Culture", "Grand Icone Autre Project", "Grand Icone Entraide"]
    var imagesNames2 = ["Grand Icone Entrepreneur", "Grand Icone Environment", "Grand Icone Etude"]
    var imagesNames3 = ["Grand Icone Medical", "Grand Icone Sportive", "Grand Icone Voyage"]
    private var nextViewNumber = Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "Home", style: .plain, target: nil, action: nil)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let timer = Timer.scheduledTimer(withTimeInterval: 5, repeats: true) { timer in
            self.SlideImage1.image = UIImage(named: self.imagesNames1.randomElement()!)
            self.SlideImage2.image = UIImage(named: self.imagesNames2.randomElement()!)
            self.SlideImage3.image = UIImage(named: self.imagesNames3.randomElement()!)
        }
        timer.fire()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    
    func createAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        
        //Creating on button
        alert.addAction(UIAlertAction(title: "Oui", style: .default, handler: {(action) in
            alert.dismiss(animated: true, completion: nil)
            self.performSegue(withIdentifier: "loginSegue", sender: nil)

        }))
        alert.addAction(UIAlertAction(title: "Non", style: .default, handler: {(action) in
            alert.dismiss(animated: true, completion: nil)
            
        }))
        
        self.present(alert, animated: true, completion: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "tabBar" {

            let nextView = segue.destination as! TabBarViewController

            switch (nextViewNumber) {
            case 1:
                nextView.selectedIndex = 0

            case 2:
                nextView.selectedIndex = 1

            default:
                break
            }
        }
    }
    
    @IBAction func btnCreatePot(_ sender: Any) {
        self.createAlert(title: "Créer une cagnotte", message: "Veuillez vous connectez pour créer une cagnotte.")
    }
    
    @IBAction func btnFirstItem(_ sender: UIButton) {
        self.nextViewNumber = 1
        self.performSegue(withIdentifier: "tabBar", sender: self)
    }

    @IBAction func btnSecondItem(_ sender: UIButton) {
        self.nextViewNumber = 2
        self.performSegue(withIdentifier: "tabBar", sender: self)

    }
    
}
