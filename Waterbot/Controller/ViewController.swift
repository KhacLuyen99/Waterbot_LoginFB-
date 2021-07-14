//
//  ViewController.swift
//  Waterbot
//
//  Created by masterdev3_ios on 7/1/21.
//

import UIKit
import FacebookCore
import FacebookLogin

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        modalPresentationStyle = .fullScreen
        // Do any additional setup after loading the view.
    }

    @IBAction func loginFb(sender: UIButton) {
       
        if AccessToken.current != nil{
            let pvc = self.storyboard?.instantiateViewController(withIdentifier: "ProfileViewController") as? ProfileViewController
            modalPresentationStyle = .fullScreen
            self.present(pvc!, animated: true, completion: nil)
        } else {
            let manager = LoginManager()
            manager.logIn(permissions: [ .publicProfile], viewController: self) { loginResult in
                
               switch loginResult {
                
                case .failed(let error):
                    print(error)
                
                case .cancelled:
                    print("User cancelled login.")
                    
               case .success(_, _,_):
                    print("Logged in!")
                    let pvc = self.storyboard?.instantiateViewController(withIdentifier: "ProfileViewController") as? ProfileViewController
                self.modalPresentationStyle = .fullScreen
                self.present(pvc!, animated: true, completion: nil)
                }
            }
        }
        
    }

}
