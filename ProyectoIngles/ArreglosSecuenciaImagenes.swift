//
//  ArreglosSecuenciaImagenes.swift
//  ProyectoIngles
//
//  Created by Ana Lucia Blanco on 9/7/19.
//  Copyright © 2019 Fer. All rights reserved.
//

import Foundation
import UIKit

class ArreglosSecuenciaImagenes {
    var fruta : String
    var arregloSecuenciaFruta : [String]
    
    init(fruta: String) {
        
        self.fruta = fruta
        
        switch fruta {
        case "pera":
            self.arregloSecuenciaFruta = ["animPera00", "animPera01", "animPera02",
                                     "animPera03", "animPera04", "animPera05", "animPera06", "animPera07",
                                     "animPera08", "animPera09", "animPera10", "animPera11", "animPera12",
                                     "animPera13", "animPera14", "animPera15", "animPera16", "animPera17",
                                     "animPera18", "animPera19", "animPera20", "animPera21", "animPera22",
                                     "animPera23", "animPera24", "animPera25", "animPera26", "animPera27",
                                     "animPera28", "animPera29"]
            
        default:
            self.arregloSecuenciaFruta = ["none"]
        }
        
        return arregloSecuenciaFruta
    }
    
//    var arregloPera : [String] = ["animPera00", "animPera01", "animPera02",
//                                  "animPera03", "animPera04", "animPera05", "animPera06", "animPera07",
//                                  "animPera08", "animPera09", "animPera10", "animPera11", "animPera12",
//                                  "animPera13", "animPera14", "animPera15", "animPera16", "animPera17",
//                                  "animPera18", "animPera19", "animPera20", "animPera21", "animPera22",
//                                  "animPera23", "animPera24", "animPera25", "animPera26", "animPera27",
//                                  "animPera28", "animPera29"]
}
