//
//  TransportesController.swift
//  ProyectoIngles
//
//  Created by Alumno on 02/09/19.
//  Copyright © 2019 Fer. All rights reserved.
//

import Foundation
import UIKit

import AVFoundation

class TransportesController : UIViewController{
  
    //-----View Principal Transportes y Label---
    @IBOutlet weak var imgSecuenciaPrincipal: UIImageView!
    @IBOutlet weak var txtNombres: UILabel! //Label etiqueta
    
    //===================== UI IMAGES =======================
    //UI IMAGE Carro
    @IBOutlet weak var ImgCarro: UIImageView!
    //UI IMAGE Tren
    @IBOutlet weak var imgTren: UIImageView!
    //UI IMAGE Avion
    @IBOutlet weak var imgAvion: UIImageView!
    //UI IMAGE Barco
    @IBOutlet weak var imgBarco: UIImageView!
    //UI IMAGE Motocicleta
    @IBOutlet weak var imgMotocicleta: UIImageView!
    //UI IMAGE Trailer
    @IBOutlet weak var imgTrailer: UIImageView!
    //UI IMAGE Bicicleta
    @IBOutlet weak var imgBicicleta: UIImageView!
    //UI IMAGE Bus
    @IBOutlet weak var imgBus: UIImageView!
    //UI IMAGE Helicoptero
    @IBOutlet weak var imgHelicoptero: UIImageView!
    
    
    
    //=== CARRO ===
    @IBAction func doTapTransporte1(_ sender: Any) {
    
        txtNombres.text = "Car"
        
        var imagenesSecuenciaCarroPrincipal : [UIImage] = []
        imagenesSecuenciaCarroPrincipal.removeAll()
        
        imagenesSecuenciaCarroPrincipal.append(UIImage(named: "AutoM1.png")!)
        imagenesSecuenciaCarroPrincipal.append(UIImage(named: "AutoM2.png")!)
        imagenesSecuenciaCarroPrincipal.append(UIImage(named: "AutoM3.png")!)
        imagenesSecuenciaCarroPrincipal.append(UIImage(named: "AutoM4.png")!)
        imagenesSecuenciaCarroPrincipal.append(UIImage(named: "AutoM5.png")!)
        imagenesSecuenciaCarroPrincipal.append(UIImage(named: "AutoM6.png")!)
        imagenesSecuenciaCarroPrincipal.append(UIImage(named: "AutoM7.png")!)
        imagenesSecuenciaCarroPrincipal.append(UIImage(named: "AutoM8.png")!)
        
        imgSecuenciaPrincipal.animationImages = imagenesSecuenciaCarroPrincipal
        imgSecuenciaPrincipal.animationDuration = 0.8
        
        if(imgSecuenciaPrincipal.isAnimating){
            
            imgSecuenciaPrincipal.stopAnimating()
            
        }else{
            
            imgSecuenciaPrincipal.startAnimating()
            
        }
        
    }
    
    //=====TREN=====
    @IBAction func doTapTransporteTren(_ sender: Any) {
        
        txtNombres.text = "Train"
        
        var imagenesSecuenciaTrenPrincipal : [UIImage] = []
        imagenesSecuenciaTrenPrincipal.removeAll()
        
        imagenesSecuenciaTrenPrincipal.append(UIImage(named: "AutoM1.png")!)
        imagenesSecuenciaTrenPrincipal.append(UIImage(named: "AutoM2.png")!)
        imagenesSecuenciaTrenPrincipal.append(UIImage(named: "AutoM3.png")!)
        imagenesSecuenciaTrenPrincipal.append(UIImage(named: "AutoM4.png")!)
        imagenesSecuenciaTrenPrincipal.append(UIImage(named: "AutoM5.png")!)
        imagenesSecuenciaTrenPrincipal.append(UIImage(named: "AutoM6.png")!)
        imagenesSecuenciaTrenPrincipal.append(UIImage(named: "AutoM7.png")!)
        imagenesSecuenciaTrenPrincipal.append(UIImage(named: "AutoM8.png")!)
        
        imgSecuenciaPrincipal.animationImages = imagenesSecuenciaTrenPrincipal
        imgSecuenciaPrincipal.animationDuration = 0.8
        
        if(imgSecuenciaPrincipal.isAnimating){
            
            imgSecuenciaPrincipal.stopAnimating()
            
        }else{
            
            imgSecuenciaPrincipal.startAnimating()
            
        }
        
    }
    
    //====AVION====
    @IBAction func doTapTransporteAvion(_ sender: Any) {
        
        txtNombres.text = "Airplane"
        
        var imagenesSecuenciaAvionPrincipal : [UIImage] = []
        imagenesSecuenciaAvionPrincipal.removeAll()
        
        imagenesSecuenciaAvionPrincipal.append(UIImage(named: "AviónM100.png")!)
        imagenesSecuenciaAvionPrincipal.append(UIImage(named: "AviónM101.png")!)
        imagenesSecuenciaAvionPrincipal.append(UIImage(named: "AviónM102.png")!)
        imagenesSecuenciaAvionPrincipal.append(UIImage(named: "AviónM103.png")!)
        imagenesSecuenciaAvionPrincipal.append(UIImage(named: "AviónM104.png")!)
        imagenesSecuenciaAvionPrincipal.append(UIImage(named: "AviónM105.png")!)
        imagenesSecuenciaAvionPrincipal.append(UIImage(named: "AviónM106.png")!)
        imagenesSecuenciaAvionPrincipal.append(UIImage(named: "AviónM107.png")!)
        imagenesSecuenciaAvionPrincipal.append(UIImage(named: "AviónM108.png")!)
        imagenesSecuenciaAvionPrincipal.append(UIImage(named: "AviónM109.png")!)
        imagenesSecuenciaAvionPrincipal.append(UIImage(named: "AviónM110.png")!)
        imagenesSecuenciaAvionPrincipal.append(UIImage(named: "AviónM111.png")!)
        
        imgSecuenciaPrincipal.animationImages = imagenesSecuenciaAvionPrincipal
        imgSecuenciaPrincipal.animationDuration = 0.8
        
        if(imgSecuenciaPrincipal.isAnimating){
            
            imgSecuenciaPrincipal.stopAnimating()
            
        }else{
            
            imgSecuenciaPrincipal.startAnimating()
            
        }
        
    }
    
    
    
   //====BARCO====
    @IBAction func doTapTransporteBarco(_ sender: Any) {
        
        txtNombres.text = "Sailboat"
        
        var imagenesSecuenciaBarcoPrincipal : [UIImage] = []
        imagenesSecuenciaBarcoPrincipal.removeAll()
        
        imagenesSecuenciaBarcoPrincipal.append(UIImage(named: "AutoM1.png")!)
        imagenesSecuenciaBarcoPrincipal.append(UIImage(named: "AutoM2.png")!)
        imagenesSecuenciaBarcoPrincipal.append(UIImage(named: "AutoM3.png")!)
        imagenesSecuenciaBarcoPrincipal.append(UIImage(named: "AutoM4.png")!)
        imagenesSecuenciaBarcoPrincipal.append(UIImage(named: "AutoM5.png")!)
        imagenesSecuenciaBarcoPrincipal.append(UIImage(named: "AutoM6.png")!)
        imagenesSecuenciaBarcoPrincipal.append(UIImage(named: "AutoM7.png")!)
        imagenesSecuenciaBarcoPrincipal.append(UIImage(named: "AutoM8.png")!)
        
        imgSecuenciaPrincipal.animationImages = imagenesSecuenciaBarcoPrincipal
        imgSecuenciaPrincipal.animationDuration = 0.7
        
        if(imgSecuenciaPrincipal.isAnimating){
            
            imgSecuenciaPrincipal.stopAnimating()
            
        }else{
            
            imgSecuenciaPrincipal.startAnimating()
            
        }
        
    }
    
    //====MOTOCICLETA====
    @IBAction func doTapTransporteMotocicleta(_ sender: Any) {
        
        txtNombres.text = "Motocycle"
        
        var imagenesSecuenciaMotocicletaPrincipal : [UIImage] = []
        imagenesSecuenciaMotocicletaPrincipal.removeAll()
        
        imagenesSecuenciaMotocicletaPrincipal.append(UIImage(named: "AutoM1.png")!)
        imagenesSecuenciaMotocicletaPrincipal.append(UIImage(named: "AutoM2.png")!)
        imagenesSecuenciaMotocicletaPrincipal.append(UIImage(named: "AutoM3.png")!)
        imagenesSecuenciaMotocicletaPrincipal.append(UIImage(named: "AutoM4.png")!)
        imagenesSecuenciaMotocicletaPrincipal.append(UIImage(named: "AutoM5.png")!)
        imagenesSecuenciaMotocicletaPrincipal.append(UIImage(named: "AutoM6.png")!)
        imagenesSecuenciaMotocicletaPrincipal.append(UIImage(named: "AutoM7.png")!)
        imagenesSecuenciaMotocicletaPrincipal.append(UIImage(named: "AutoM8.png")!)
        
        imgSecuenciaPrincipal.animationImages = imagenesSecuenciaMotocicletaPrincipal
        imgSecuenciaPrincipal.animationDuration = 0.7
        
        if(imgSecuenciaPrincipal.isAnimating){
            
            imgSecuenciaPrincipal.stopAnimating()
            
        }else{
            
            imgSecuenciaPrincipal.startAnimating()
            
        }
        
    }
    
    //====TRAILER====
    @IBAction func doTapTransporteTrailer(_ sender: Any) {
        
        txtNombres.text = "Truck"
        
        var imagenesSecuenciaTrailerPrincipal : [UIImage] = []
        imagenesSecuenciaTrailerPrincipal.removeAll()
        
        imagenesSecuenciaTrailerPrincipal.append(UIImage(named: "CamiónM00.png")!)
        imagenesSecuenciaTrailerPrincipal.append(UIImage(named: "CamiónM01.png")!)
        imagenesSecuenciaTrailerPrincipal.append(UIImage(named: "CamiónM02.png")!)
        imagenesSecuenciaTrailerPrincipal.append(UIImage(named: "CamiónM03.png")!)
        imagenesSecuenciaTrailerPrincipal.append(UIImage(named: "CamiónM04.png")!)
        imagenesSecuenciaTrailerPrincipal.append(UIImage(named: "CamiónM05.png")!)
        imagenesSecuenciaTrailerPrincipal.append(UIImage(named: "CamiónM06.png")!)
        imagenesSecuenciaTrailerPrincipal.append(UIImage(named: "CamiónM07.png")!)
        imagenesSecuenciaTrailerPrincipal.append(UIImage(named: "CamiónM08.png")!)
        imagenesSecuenciaTrailerPrincipal.append(UIImage(named: "CamiónM09.png")!)
        imagenesSecuenciaTrailerPrincipal.append(UIImage(named: "CamiónM10.png")!)
        imagenesSecuenciaTrailerPrincipal.append(UIImage(named: "CamiónM11.png")!)
        
        
        imgSecuenciaPrincipal.animationImages = imagenesSecuenciaTrailerPrincipal
        imgSecuenciaPrincipal.animationDuration = 0.7
        
        if(imgSecuenciaPrincipal.isAnimating){
            
            imgSecuenciaPrincipal.stopAnimating()
            
        }else{
            
            imgSecuenciaPrincipal.startAnimating()
            
        }
        
    }
    
    //====BICICLETA====
    @IBAction func doTapTransporteBicicleta(_ sender: Any) {
        
        txtNombres.text = "Bicycle"
        
        var imagenesSecuenciaBicicletaPrincipal : [UIImage] = []
        imagenesSecuenciaBicicletaPrincipal.removeAll()
        
        imagenesSecuenciaBicicletaPrincipal.append(UIImage(named: "AutoM1.png")!)
        imagenesSecuenciaBicicletaPrincipal.append(UIImage(named: "AutoM2.png")!)
        imagenesSecuenciaBicicletaPrincipal.append(UIImage(named: "AutoM3.png")!)
        imagenesSecuenciaBicicletaPrincipal.append(UIImage(named: "AutoM4.png")!)
        imagenesSecuenciaBicicletaPrincipal.append(UIImage(named: "AutoM5.png")!)
        imagenesSecuenciaBicicletaPrincipal.append(UIImage(named: "AutoM6.png")!)
        imagenesSecuenciaBicicletaPrincipal.append(UIImage(named: "AutoM7.png")!)
        imagenesSecuenciaBicicletaPrincipal.append(UIImage(named: "AutoM8.png")!)
        
        imgSecuenciaPrincipal.animationImages = imagenesSecuenciaBicicletaPrincipal
        imgSecuenciaPrincipal.animationDuration = 0.7
        
        if(imgSecuenciaPrincipal.isAnimating){
            
            imgSecuenciaPrincipal.stopAnimating()
            
        }else{
            
            imgSecuenciaPrincipal.startAnimating()
            
        }
        
    }
    
    //====BUS====
    @IBAction func doTapTransporteBus(_ sender: Any) {
        
        txtNombres.text = "Bus"
        
        var imagenesSecuenciaBusPrincipal : [UIImage] = []
        imagenesSecuenciaBusPrincipal.removeAll()
        
        imagenesSecuenciaBusPrincipal.append(UIImage(named: "AutoM1.png")!)
        imagenesSecuenciaBusPrincipal.append(UIImage(named: "AutoM2.png")!)
        imagenesSecuenciaBusPrincipal.append(UIImage(named: "AutoM3.png")!)
        imagenesSecuenciaBusPrincipal.append(UIImage(named: "AutoM4.png")!)
        imagenesSecuenciaBusPrincipal.append(UIImage(named: "AutoM5.png")!)
        imagenesSecuenciaBusPrincipal.append(UIImage(named: "AutoM6.png")!)
        imagenesSecuenciaBusPrincipal.append(UIImage(named: "AutoM7.png")!)
        imagenesSecuenciaBusPrincipal.append(UIImage(named: "AutoM8.png")!)
        
        imgSecuenciaPrincipal.animationImages = imagenesSecuenciaBusPrincipal
        imgSecuenciaPrincipal.animationDuration = 0.7
        
        if(imgSecuenciaPrincipal.isAnimating){
            
            imgSecuenciaPrincipal.stopAnimating()
            
        }else{
            
            imgSecuenciaPrincipal.startAnimating()
            
        }
        
        
    }
    
    //====HELICOPTERO====
    @IBAction func doTapTransporteHelicoptero(_ sender: Any) {
    
        txtNombres.text = "Helicopter"
        
        var imagenesSecuenciaHelicopteroPrincipal : [UIImage] = []
        imagenesSecuenciaHelicopteroPrincipal.removeAll()
        
        imagenesSecuenciaHelicopteroPrincipal.append(UIImage(named: "HelicopteroM00.png")!)
        imagenesSecuenciaHelicopteroPrincipal.append(UIImage(named: "HelicopteroM01.png")!)
        imagenesSecuenciaHelicopteroPrincipal.append(UIImage(named: "HelicopteroM02.png")!)
        imagenesSecuenciaHelicopteroPrincipal.append(UIImage(named: "HelicopteroM03.png")!)
        imagenesSecuenciaHelicopteroPrincipal.append(UIImage(named: "HelicopteroM04.png")!)
        imagenesSecuenciaHelicopteroPrincipal.append(UIImage(named: "HelicopteroM05.png")!)
        imagenesSecuenciaHelicopteroPrincipal.append(UIImage(named: "HelicopteroM06.png")!)
        imagenesSecuenciaHelicopteroPrincipal.append(UIImage(named: "HelicopteroM07.png")!)
        imagenesSecuenciaHelicopteroPrincipal.append(UIImage(named: "HelicopteroM08.png")!)
        imagenesSecuenciaHelicopteroPrincipal.append(UIImage(named: "HelicopteroM09.png")!)
        imagenesSecuenciaHelicopteroPrincipal.append(UIImage(named: "HelicopteroM10.png")!)
        imagenesSecuenciaHelicopteroPrincipal.append(UIImage(named: "HelicopteroM11.png")!)
        
        imgSecuenciaPrincipal.animationImages = imagenesSecuenciaHelicopteroPrincipal
        imgSecuenciaPrincipal.animationDuration = 0.7
        
        if(imgSecuenciaPrincipal.isAnimating){
            
            imgSecuenciaPrincipal.stopAnimating()
            
        }else{
            
            imgSecuenciaPrincipal.startAnimating()
            
        }
    
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Animacion CARRO
        var imagenesSecuenciaCarro : [UIImage] = []
        imagenesSecuenciaCarro.append(UIImage(named: "AutoM1.png")!)
        imagenesSecuenciaCarro.append(UIImage(named: "AutoM2.png")!)
        imagenesSecuenciaCarro.append(UIImage(named: "AutoM3.png")!)
        imagenesSecuenciaCarro.append(UIImage(named: "AutoM4.png")!)
        imagenesSecuenciaCarro.append(UIImage(named: "AutoM5.png")!)
        imagenesSecuenciaCarro.append(UIImage(named: "AutoM6.png")!)
        imagenesSecuenciaCarro.append(UIImage(named: "AutoM7.png")!)
        imagenesSecuenciaCarro.append(UIImage(named: "AutoM8.png")!)
        
        ImgCarro.animationImages = imagenesSecuenciaCarro
        ImgCarro.animationDuration = 0.7
        ImgCarro.startAnimating()
        
        
        //ANIMACION TREN
        var imagenesSecuenciaTren : [UIImage] = []
        imagenesSecuenciaTren.append(UIImage(named: "AutoM1.png")!)
        imagenesSecuenciaTren.append(UIImage(named: "AutoM2.png")!)
        imagenesSecuenciaTren.append(UIImage(named: "AutoM3.png")!)
        imagenesSecuenciaTren.append(UIImage(named: "AutoM4.png")!)
        imagenesSecuenciaTren.append(UIImage(named: "AutoM5.png")!)
        imagenesSecuenciaTren.append(UIImage(named: "AutoM6.png")!)
        imagenesSecuenciaTren.append(UIImage(named: "AutoM7.png")!)
        imagenesSecuenciaTren.append(UIImage(named: "AutoM8.png")!)
        
        imgTren.animationImages = imagenesSecuenciaTren
        imgTren.animationDuration = 0.7
        imgTren.startAnimating()
        
        
        //ANIMACION AVION
        var imagenesSecuenciaAvion : [UIImage] = []
        imagenesSecuenciaAvion.append(UIImage(named: "AviónM100.png")!)
        imagenesSecuenciaAvion.append(UIImage(named: "AviónM101.png")!)
        imagenesSecuenciaAvion.append(UIImage(named: "AviónM102.png")!)
        imagenesSecuenciaAvion.append(UIImage(named: "AviónM103.png")!)
        imagenesSecuenciaAvion.append(UIImage(named: "AviónM104.png")!)
        imagenesSecuenciaAvion.append(UIImage(named: "AviónM105.png")!)
        imagenesSecuenciaAvion.append(UIImage(named: "AviónM106.png")!)
        imagenesSecuenciaAvion.append(UIImage(named: "AviónM107.png")!)
        imagenesSecuenciaAvion.append(UIImage(named: "AviónM108.png")!)
        imagenesSecuenciaAvion.append(UIImage(named: "AviónM109.png")!)
        imagenesSecuenciaAvion.append(UIImage(named: "AviónM110.png")!)
        imagenesSecuenciaAvion.append(UIImage(named: "AviónM111.png")!)
        
        imgAvion.animationImages = imagenesSecuenciaAvion
        imgAvion.animationDuration = 0.7
        imgAvion.startAnimating()
        
 
        
        
        //ANIMACION BARCO
        var imagenesSecuenciaBarco : [UIImage] = []
        imagenesSecuenciaBarco.append(UIImage(named: "AutoM1.png")!)
        imagenesSecuenciaBarco.append(UIImage(named: "AutoM2.png")!)
        imagenesSecuenciaBarco.append(UIImage(named: "AutoM3.png")!)
        imagenesSecuenciaBarco.append(UIImage(named: "AutoM4.png")!)
        imagenesSecuenciaBarco.append(UIImage(named: "AutoM5.png")!)
        imagenesSecuenciaBarco.append(UIImage(named: "AutoM6.png")!)
        imagenesSecuenciaBarco.append(UIImage(named: "AutoM7.png")!)
        imagenesSecuenciaBarco.append(UIImage(named: "AutoM8.png")!)
        
        imgBarco.animationImages = imagenesSecuenciaBarco
        imgBarco.animationDuration = 0.7
        imgBarco.startAnimating()
        
        
        //ANIMACION MOTOCICLETA
        var imagenesSecuenciaMotocicleta : [UIImage] = []
        imagenesSecuenciaMotocicleta.append(UIImage(named: "AutoM1.png")!)
        imagenesSecuenciaMotocicleta.append(UIImage(named: "AutoM2.png")!)
        imagenesSecuenciaMotocicleta.append(UIImage(named: "AutoM3.png")!)
        imagenesSecuenciaMotocicleta.append(UIImage(named: "AutoM4.png")!)
        imagenesSecuenciaMotocicleta.append(UIImage(named: "AutoM5.png")!)
        imagenesSecuenciaMotocicleta.append(UIImage(named: "AutoM6.png")!)
        imagenesSecuenciaMotocicleta.append(UIImage(named: "AutoM7.png")!)
        imagenesSecuenciaMotocicleta.append(UIImage(named: "AutoM8.png")!)
        
        imgMotocicleta.animationImages = imagenesSecuenciaMotocicleta
        imgMotocicleta.animationDuration = 0.7
        imgMotocicleta.startAnimating()
        
        
        //ANIMACION TRAILER
        var imagenesSecuenciaTrailer : [UIImage] = []
        imagenesSecuenciaTrailer.append(UIImage(named: "CamiónM00.png")!)
        imagenesSecuenciaTrailer.append(UIImage(named: "CamiónM01.png")!)
        imagenesSecuenciaTrailer.append(UIImage(named: "CamiónM02.png")!)
        imagenesSecuenciaTrailer.append(UIImage(named: "CamiónM03.png")!)
        imagenesSecuenciaTrailer.append(UIImage(named: "CamiónM04.png")!)
        imagenesSecuenciaTrailer.append(UIImage(named: "CamiónM05.png")!)
        imagenesSecuenciaTrailer.append(UIImage(named: "CamiónM06.png")!)
        imagenesSecuenciaTrailer.append(UIImage(named: "CamiónM07.png")!)
        imagenesSecuenciaTrailer.append(UIImage(named: "CamiónM08.png")!)
        imagenesSecuenciaTrailer.append(UIImage(named: "CamiónM09.png")!)
        imagenesSecuenciaTrailer.append(UIImage(named: "CamiónM10.png")!)
        imagenesSecuenciaTrailer.append(UIImage(named: "CamiónM11.png")!)
        
        imgTrailer.animationImages = imagenesSecuenciaTrailer
        imgTrailer.animationDuration = 0.7
        imgTrailer.startAnimating()
        
        
        //ANIMACION BICICLETA
        var imagenesSecuenciaBicicleta : [UIImage] = []
        imagenesSecuenciaBicicleta.append(UIImage(named: "AutoM1.png")!)
        imagenesSecuenciaBicicleta.append(UIImage(named: "AutoM2.png")!)
        imagenesSecuenciaBicicleta.append(UIImage(named: "AutoM3.png")!)
        imagenesSecuenciaBicicleta.append(UIImage(named: "AutoM4.png")!)
        imagenesSecuenciaBicicleta.append(UIImage(named: "AutoM5.png")!)
        imagenesSecuenciaBicicleta.append(UIImage(named: "AutoM6.png")!)
        imagenesSecuenciaBicicleta.append(UIImage(named: "AutoM7.png")!)
        imagenesSecuenciaBicicleta.append(UIImage(named: "AutoM8.png")!)
        
        imgBicicleta.animationImages = imagenesSecuenciaBicicleta
        imgBicicleta.animationDuration = 0.7
        imgBicicleta.startAnimating()
        
        
        //ANIMACION BUS
        var imagenesSecuenciaBus : [UIImage] = []
        imagenesSecuenciaBus.append(UIImage(named: "AutoM1.png")!)
        imagenesSecuenciaBus.append(UIImage(named: "AutoM2.png")!)
        imagenesSecuenciaBus.append(UIImage(named: "AutoM3.png")!)
        imagenesSecuenciaBus.append(UIImage(named: "AutoM4.png")!)
        imagenesSecuenciaBus.append(UIImage(named: "AutoM5.png")!)
        imagenesSecuenciaBus.append(UIImage(named: "AutoM6.png")!)
        imagenesSecuenciaBus.append(UIImage(named: "AutoM7.png")!)
        imagenesSecuenciaBus.append(UIImage(named: "AutoM8.png")!)
        
        imgBus.animationImages = imagenesSecuenciaBus
        imgBus.animationDuration = 0.7
        imgBus.startAnimating()
        
        
        //ANIMACION HELICOPTERO
        var imagenesSecuenciaHelicoptero : [UIImage] = []
        imagenesSecuenciaHelicoptero.append(UIImage(named: "HelicopteroM00.png")!)
        imagenesSecuenciaHelicoptero.append(UIImage(named: "HelicopteroM01.png")!)
        imagenesSecuenciaHelicoptero.append(UIImage(named: "HelicopteroM02.png")!)
        imagenesSecuenciaHelicoptero.append(UIImage(named: "HelicopteroM03.png")!)
        imagenesSecuenciaHelicoptero.append(UIImage(named: "HelicopteroM04.png")!)
        imagenesSecuenciaHelicoptero.append(UIImage(named: "HelicopteroM05.png")!)
        imagenesSecuenciaHelicoptero.append(UIImage(named: "HelicopteroM06.png")!)
        imagenesSecuenciaHelicoptero.append(UIImage(named: "HelicopteroM07.png")!)
        imagenesSecuenciaHelicoptero.append(UIImage(named: "HelicopteroM08.png")!)
        imagenesSecuenciaHelicoptero.append(UIImage(named: "HelicopteroM09.png")!)
        imagenesSecuenciaHelicoptero.append(UIImage(named: "HelicopteroM10.png")!)
        imagenesSecuenciaHelicoptero.append(UIImage(named: "HelicopteroM11.png")!)
        
        imgHelicoptero.animationImages = imagenesSecuenciaHelicoptero
        imgHelicoptero.animationDuration = 0.7
        imgHelicoptero.startAnimating()
        
        
        
        
        
    }
  
}


