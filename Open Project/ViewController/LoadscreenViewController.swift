//
//  ViewController.swift
//  Open Project
//
//  Created by Nordine Sayah on 15/11/2020.
//

import UIKit
import Network

class LoadscreenViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        monitorNetwork()
    }
    
    func monitorNetwork() {
        let monitor = NWPathMonitor()
        
        monitor.pathUpdateHandler = { path in
            if path.status == .satisfied {
                print("Internet on")
                DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                    self.performSegue(withIdentifier: "InternetOn", sender: nil)
                }
            } else {
                print("Internet off")
                DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                    self.createAlert(title: "Internet désactivé", message: "Veuillez vous connecter à internet.")
                }
            }
        }
        let queue = DispatchQueue(label: "Network")
        monitor.start(queue: queue)
    }
    
    func createAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        
        //Creating button on alert
        alert.addAction(UIAlertAction(title: "Réessayer", style: .default, handler: {(action) in
            alert.dismiss(animated: true, completion: nil)
            self.monitorNetwork()
        }))
        alert.addAction(UIAlertAction(title: "Quitter", style: .default, handler: {(action) in
            alert.dismiss(animated: true, completion: nil)
            
            //exite application
            exit(0)
        }))
        
        self.present(alert, animated: true, completion: nil)
    }

}
