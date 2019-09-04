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
    var playerMusicaFondo : AVAudioPlayer?
    
    //var reproducccion = false
    
    @IBOutlet weak var txtNombres: UILabel!
    
    @IBAction func doTapTransporte1(_ sender: Any) {
        txtNombres.text = "Carro"
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let pathMusicaFondo = Bundle.main.path(forResource: "audio.wav", ofType : nil)
                    
        let urlMusicaFondo = URL(fileURLWithPath: pathMusicaFondo!)
        
        do{
            
            playerMusicaFondo = try AVAudioPlayer(contentsOf : urlMusicaFondo)
            
            playerMusicaFondo?.play()
            
        } catch {
            
        }
            
        
        
     
    }
  
}


