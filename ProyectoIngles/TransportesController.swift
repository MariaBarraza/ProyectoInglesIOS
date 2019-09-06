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
    
    //MUSICA FONDO
    //var playerMusicaFondo : AVAudioPlayer?
    //var reproducccion = false
    
    //View Principal Transportes
    @IBOutlet weak var imgSecuenciaPrincipal: UIImageView!
    @IBOutlet weak var txtNombres: UILabel! //Label etiqueta
    
    
    //====== UI IMAGES =====
    //UI IMAGE Carro
    @IBOutlet weak var ImgCarro: UIImageView!
    
    //=== CARRO ===
    @IBAction func doTapTransporte1(_ sender: Any) {
    
        txtNombres.text = "Car"
        
        var imagenesSecuenciaCarroPrincipal : [UIImage] = []
        
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
        imgSecuenciaPrincipal.startAnimating()
    
}
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //MUSICA FONDO
        /*
        let pathMusicaFondo = Bundle.main.path(forResource: "audio.wav", ofType : nil)
                    
        let urlMusicaFondo = URL(fileURLWithPath: pathMusicaFondo!)
        
        do{
            
            playerMusicaFondo = try AVAudioPlayer(contentsOf : urlMusicaFondo)
            
            playerMusicaFondo?.play()
            
        } catch {}
         */
        
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
        
        
        
        
        
    }
  
}


