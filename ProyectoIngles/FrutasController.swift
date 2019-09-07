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
    
    var secuenciaFrutaSeleccionada : [UIImage] = []
    
    var secuenciaPera : [UIImage] = []
    
    var arregloPera : [String] = ["animPera00", "animPera01", "animPera02",
    "animPera03", "animPera04", "animPera05", "animPera06", "animPera07",
    "animPera08", "animPera09", "animPera10", "animPera11", "animPera12",
    "animPera13", "animPera14", "animPera15", "animPera16", "animPera17",
    "animPera18", "animPera19", "animPera20", "animPera21", "animPera22",
    "animPera23", "animPera24", "animPera25", "animPera26", "animPera27",
    "animPera28", "animPera29"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lblFrutaSeleccionada.text = " "
        
        // Pera
        animationImageMiniaturas(arregloFruta: arregloPera, imageViewFruta: imgPera, imagenesArray: secuenciaPera, duracion: 2)
    }
    
    @IBAction func tapManzana(_ sender: Any) {
        imgFrutaSeleccionada.startAnimating()
        lblFrutaSeleccionada.text = "Apple"
    }
    
    @IBAction func tapFresa(_ sender: Any) {
        lblFrutaSeleccionada.text = "Strawberry"
    }
    
    @IBAction func tapCereza(_ sender: Any) {
        lblFrutaSeleccionada.text = "Cherry"
    }
    
    @IBAction func tapNaranja(_ sender: Any) {
        lblFrutaSeleccionada.text = "Orange"
    }
    
    @IBAction func tapLimon(_ sender: Any) {
        lblFrutaSeleccionada.text = "Lemon"
    }
    
    @IBAction func tapPlatano(_ sender: Any) {
        lblFrutaSeleccionada.text = "Banana"
    }
    
    @IBAction func tapKiwi(_ sender: Any) {
        lblFrutaSeleccionada.text = "Kiwi"
    }
    
    @IBAction func tapPera(_ sender: Any) {
        animationImagesTap(duracion: 2, nombreFruta: "Pear")
    }
    
    @IBAction func tapSandia(_ sender: Any) {
        lblFrutaSeleccionada.text = "Watermelon"
    }
    
    func animationImageMiniaturas(arregloFruta: [String], imageViewFruta: UIImageView, imagenesArray: [UIImage], duracion: Int) {
        
        var arrayTemp = imagenesArray
        
        for imagen in arregloFruta {
            arrayTemp.append(UIImage(named: imagen)!)
        }
        
        imageViewFruta.animationImages = arrayTemp
        imageViewFruta.animationDuration = TimeInterval(duracion)
        imageViewFruta.startAnimating()
        
        secuenciaFrutaSeleccionada = arrayTemp
    }
    
    func animationImagesTap(duracion: Int, nombreFruta: String) {
        imgFrutaSeleccionada.animationImages = secuenciaFrutaSeleccionada
        imgFrutaSeleccionada.animationDuration = TimeInterval(duracion)
        imgFrutaSeleccionada.startAnimating()
        lblFrutaSeleccionada.text = nombreFruta
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        
    }
    
    

}
