//
//  SplashController.swift
//  ProyectoIngles
//
//  Created by Ana Lucia Blanco on 9/7/19.
//  Copyright © 2019 Fer. All rights reserved.
//

import UIKit

class SplashController: UIViewController {

    var mask: CALayer?
    @IBOutlet weak var logo: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.dismiss(animated: true, completion: {
            let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let newViewController = storyBoard.instantiateViewController(withIdentifier: "mainController") as! ViewController
            self.present(newViewController, animated: true, completion: nil)
            })
    }
}
