//
//  ProfileViewController.swift
//  Waterbot
//
//  Created by masterdev3_ios on 7/1/21.
//

import UIKit
import FacebookLogin
import FacebookCore

class ProfileViewController: UIViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        modalPresentationStyle = .fullScreen
    }
    
    
    @IBAction func logoutBtn(_ sender: Any) {
        if AccessToken.current != nil{
            AccessToken.current = nil
            let loginVC = self.storyboard?.instantiateViewController(withIdentifier: "ViewController") as? ViewController
            modalPresentationStyle = .fullScreen
            self.present(loginVC!, animated: true, completion: nil)
        }
    }
    
    
}
