//
//  profileViewController.swift
//  CodeVar
//
//  Created by ANKIT YADAV on 12/10/19.
//  Copyright © 2019 Tushar Singh. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    @IBOutlet weak var profileImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        profileImageView.layer.cornerRadius = 20
        profileImageView.clipsToBounds = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
         self.navigationController?.isNavigationBarHidden = false
        navigationController?.navigationBar.barTintColor = UIColor(red:0.07, green:0.11, blue:0.14, alpha:1.0)
        navigationController?.navigationBar.topItem?.title = "Profile"
        //navigationController?.navigationBar.tintColor = UIColor.white
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
    }
    

}
