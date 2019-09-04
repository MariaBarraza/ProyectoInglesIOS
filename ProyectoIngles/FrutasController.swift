//
//  FrutasController.swift
//  ProyectoIngles
//
//  Created by Ana Lucia Blanco on 9/2/19.
//  Copyright © 2019 Fer. All rights reserved.
//

import UIKit

class FrutasController: UIViewController {
    @IBOutlet weak var imgFrutaSeleccionada: UIImageView!
    @IBOutlet weak var lblFrutaSeleccionada: UILabel!
    
    @IBOutlet weak var imgManzana: UIImageView!
    @IBOutlet weak var imgFresa: UIImageView!
    @IBOutlet weak var imgCereza: UIImageView!
    @IBOutlet weak var imgNaranja: UIImageView!
    @IBOutlet weak var imgLimon: UIImageView!
    @IBOutlet weak var imgPlatano: UIImageView!
    @IBOutlet weak var imgKiwi: UIImageView!
    @IBOutlet weak var imgPera: UIImageView!
    @IBOutlet weak var imgSandia: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblFrutaSeleccionada.text = " "
        
    }
    
    @IBAction func tapManzana(_ sender: Any) {
        imgFrutaSeleccionada.image = imgManzana.image
        lblFrutaSeleccionada.text = "Apple"
    }
    
    @IBAction func tapFresa(_ sender: Any) {
        imgFrutaSeleccionada.image = imgFresa.image
        lblFrutaSeleccionada.text = "Strawberry"
    }
    
    @IBAction func tapCereza(_ sender: Any) {
        imgFrutaSeleccionada.image = imgCereza.image
        lblFrutaSeleccionada.text = "Cherry"
    }
    
    @IBAction func tapNaranja(_ sender: Any) {
        imgFrutaSeleccionada.image = imgNaranja.image
        lblFrutaSeleccionada.text = "Orange"
    }
    
    @IBAction func tapLimon(_ sender: Any) {
        imgFrutaSeleccionada.image = imgLimon.image
        lblFrutaSeleccionada.text = "Lemmon"
    }
    
    @IBAction func tapPlatano(_ sender: Any) {
        imgFrutaSeleccionada.image = imgPlatano.image
        lblFrutaSeleccionada.text = "Banana"
    }
    
    @IBAction func tapKiwi(_ sender: Any) {
        imgFrutaSeleccionada.image = imgKiwi.image
        lblFrutaSeleccionada.text = "Kiwi"
    }
    
    @IBAction func tapPera(_ sender: Any) {
        imgFrutaSeleccionada.image = imgPera.image
        lblFrutaSeleccionada.text = "Pear"
    }
    
    @IBAction func tapSandia(_ sender: Any) {
        imgFrutaSeleccionada.image = imgSandia.image
        lblFrutaSeleccionada.text = "Watermelon"
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        
    }
    
    

}
