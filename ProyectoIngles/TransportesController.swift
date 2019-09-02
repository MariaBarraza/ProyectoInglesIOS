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
    var player : AVAudioPlayer?
    var playerMusicaFondo : AVAudioPlayer?
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let path = Bundle.main.path(forResource: "AUDIO 29.wav", ofType: nil)
        let url = URL(fileURLWithPath: path!)
        
        
        
        do {
            
            player = try AVAudioPlayer(contentsOf: url)
            let urlMusicaFondo = URL(fileURLWithPath: pathMusicaFondo!)
            playerMusicaFondo?.play()
            
        } catch {
            
            
            
        }
        
    }
    
    
    
}


