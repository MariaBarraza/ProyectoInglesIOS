//
//  FrutasController.swift
//  ProyectoIngles
//
//  Created by Ana Lucia Blanco on 9/2/19.
//  Copyright © 2019 Fer. All rights reserved.
//

import UIKit
import AVFoundation

class FrutasController: UIViewController {
    // Outlets
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
    //
    
    // Variables para el audio
    var player : AVAudioPlayer?
    var reproduccion = true
    //
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lblFrutaSeleccionada.text = " "
        
        // Atributos para las miniaturas
        animationImageMiniaturas(nombreFruta: "Manzana", imageViewFruta: imgManzana, duracion: 2)
        animationImageMiniaturas(nombreFruta: "Fresa", imageViewFruta: imgFresa, duracion: 1)
        animationImageMiniaturas(nombreFruta: "Cereza", imageViewFruta: imgCereza, duracion: 1)
        animationImageMiniaturas(nombreFruta: "Kiwi", imageViewFruta: imgKiwi, duracion: 1)
        animationImageMiniaturas(nombreFruta: "Limon", imageViewFruta: imgLimon, duracion: 1)
        animationImageMiniaturas(nombreFruta: "Platano", imageViewFruta: imgPlatano, duracion: 1)
        animationImageMiniaturas(nombreFruta: "Naranja", imageViewFruta: imgNaranja, duracion: 2)
        animationImageMiniaturas(nombreFruta: "Pera", imageViewFruta: imgPera, duracion: 2)
        animationImageMiniaturas(nombreFruta: "Sandia", imageViewFruta: imgSandia, duracion: 1)
        // FIN Atributos para las miniaturas
    }
    
    func animationImageMiniaturas(nombreFruta: String, imageViewFruta: UIImageView, duracion: Int) {
        
        var arregloFruta : [String] = []
        var arregloUIImage : [UIImage] = []
        
        let arregloManzana : [String] = ["animApple00", "animApple01", "animApple02", "animApple03", "animApple04", "animApple05", "animApple06", "animApple07", "animApple08", "animApple09", "animApple10", "animApple11", "animApple12", "animApple13", "animApple14", "animApple15", "animApple16", "animApple17", "animApple18", "animApple19", "animApple20", "animApple21", "animApple22", "animApple23", "animApple24"]
        let arregloFresa : [String] = ["animFresaDurmiendo00", "animFresaDurmiendo01", "animFresaDurmiendo02", "animFresaDurmiendo03", "animFresaDurmiendo04", "animFresaDurmiendo05", "animFresaDurmiendo06", "animFresaDurmiendo07", "animFresaDurmiendo08", "animFresaDurmiendo09", "animFresaDurmiendo10", "animFresaDurmiendo11", "animFresaDurmiendo12", "animFresaDurmiendo13", "animFresaDurmiendo14", "animFresaDurmiendo15"]
        let arregloCereza : [String] = ["animCerezasMin00", "animCerezasMin01", "animCerezasMin02", "animCerezasMin03", "animCerezasMin04", "animCerezasMin05", "animCerezasMin06", "animCerezasMin07", "animCerezasMin08", "animCerezasMin09", "animCerezasMin10", "animCerezasMin11", "animCerezasMin12", "animCerezasMin13", "animCerezasMin14", "animCerezasMin15", "animCerezasMin16", "animCerezasMin17", "animCerezasMin18", "animCerezasMin19"]
        let arregloKiwi : [String] = ["animKiwi00", "animKiwi01", "animKiwi02", "animKiwi03", "animKiwi04", "animKiwi05", "animKiwi06", "animKiwi07", "animKiwi08", "animKiwi09", "animKiwi10", "animKiwi11", "animKiwi12", "animKiwi13", "animKiwi14", "animKiwi15"]
        let arregloLimon : [String] = ["animLemon00.png", "animLemon01.png", "animLemon02.png", "animLemon03.png", "animLemon04.png", "animLemon05.png", "animLemon06.png", "animLemon07.png", "animLemon08.png", "animLemon09.png", "animLemon10.png", "animLemon11.png", "animLemon12.png", "animLemon13.png", "animLemon14.png", "animLemon15.png", "animLemon16.png", "animLemon17.png", "animLemon18.png", "animLemon19.png"]
        let arregloPlatano : [String] = ["animBanana00", "animBanana01", "animBanana02", "animBanana03", "animBanana04", "animBanana05", "animBanana06", "animBanana07", "animBanana08", "animBanana09", "animBanana10", "animBanana11", "animBanana12", "animBanana13", "animBanana14", "animBanana15"]
        let arregloNaranja : [String] = ["animNaranjaMin00", "animNaranjaMin01", "animNaranjaMin02", "animNaranjaMin03", "animNaranjaMin04", "animNaranjaMin05", "animNaranjaMin06", "animNaranjaMin07", "animNaranjaMin08", "animNaranjaMin09", "animNaranjaMin10", "animNaranjaMin11", "animNaranjaMin12", "animNaranjaMin13", "animNaranjaMin14", "animNaranjaMin15", "animNaranjaMin16", "animNaranjaMin17", "animNaranjaMin18", "animNaranjaMin19", "animNaranjaMin20", "animNaranjaMin21", "animNaranjaMin22", "animNaranjaMin23", "animNaranjaMin24", "animNaranjaMin25", "animNaranjaMin26", "animNaranjaMin27", "animNaranjaMin28", "animNaranjaMin29", "animNaranjaMin30", "animNaranjaMin31"]
        let arregloPera : [String] = ["animPera00", "animPera01", "animPera02", "animPera03", "animPera04", "animPera05", "animPera06", "animPera07", "animPera08", "animPera09", "animPera10", "animPera11", "animPera12", "animPera13", "animPera14", "animPera15", "animPera16", "animPera17", "animPera18", "animPera19", "animPera20", "animPera21", "animPera22", "animPera23", "animPera24", "animPera25", "animPera26", "animPera27", "animPera28", "animPera29"]
        let arregloSandia : [String] = ["animSandiamin00", "animSandiamin01", "animSandiamin02", "animSandiamin03", "animSandiamin04", "animSandiamin05", "animSandiamin06", "animSandiamin07", "animSandiamin08", "animSandiamin09", "animSandiamin10", "animSandiamin11", "animSandiamin12", "animSandiamin13", "animSandiamin14"]
        
        
        switch nombreFruta {
        case "Manzana":
            arregloFruta = arregloManzana
        case "Fresa":
            arregloFruta = arregloFresa
        case "Cereza":
            arregloFruta = arregloCereza
        case "Kiwi":
            arregloFruta = arregloKiwi
        case "Limon":
            arregloFruta = arregloLimon
        case "Platano":
            arregloFruta = arregloPlatano
        case "Naranja":
            arregloFruta = arregloNaranja
        case "Pera":
            arregloFruta = arregloPera
        case "Sandia":
            arregloFruta = arregloSandia
        default:
            arregloFruta = []
        }
        
        for imagen in arregloFruta {
            arregloUIImage.append(UIImage(named: imagen)!)
        }
        
        imageViewFruta.animationImages = arregloUIImage
        imageViewFruta.animationDuration = TimeInterval(duracion)
        imageViewFruta.startAnimating()
    }
    
    // Acciones de TAP
    @IBAction func tapManzana(_ sender: Any) {
        animationImagesTap(duracion: 2, nombreFruta: "Apple")
        playAudio(fileNameAndExtension: "apple.mp3")
    }
    
    @IBAction func tapFresa(_ sender: Any) {
        animationImagesTap(duracion: 3, nombreFruta: "Strawberry")
        playAudio(fileNameAndExtension: "strawberry.mp3")
    }
    
    @IBAction func tapCereza(_ sender: Any) {
        animationImagesTap(duracion: 1, nombreFruta: "Cherry")
        playAudio(fileNameAndExtension: "cherry.mp3")
    }
    
    @IBAction func tapNaranja(_ sender: Any) {
        animationImagesTap(duracion: 3, nombreFruta: "Orange")
        playAudio(fileNameAndExtension: "orange.mp3")
    }
    
    @IBAction func tapLimon(_ sender: Any) {
        animationImagesTap(duracion: 2, nombreFruta: "Lemon")
        playAudio(fileNameAndExtension: "lemon.mp3")
    }
    
    @IBAction func tapPlatano(_ sender: Any) {
        animationImagesTap(duracion: 3, nombreFruta: "Banana")
        playAudio(fileNameAndExtension: "banana.mp3")
    }
    
    @IBAction func tapKiwi(_ sender: Any) {
        animationImagesTap(duracion: 5, nombreFruta: "Kiwi")
        playAudio(fileNameAndExtension: "kiwi.mp3")
    }
    
    @IBAction func tapPera(_ sender: Any) {
        animationImagesTap(duracion: 2, nombreFruta: "Pear")
        playAudio(fileNameAndExtension: "pear.mp3")
    }
    
    @IBAction func tapSandia(_ sender: Any) {
        animationImagesTap(duracion: 3, nombreFruta: "Watermelon")
        playAudio(fileNameAndExtension: "watermelon.mp3")
    }
    // FIN Acciones de TAP
    
    // Acciones correspondientes para cada TAP
    func animationImagesTap(duracion: Int, nombreFruta: String) {
        
        var arregloFrutaSeleccionada : [String] = []
        var arregloUIImage : [UIImage] = []
        
        // Manzana
        var arregloManzanaSeleccionada : [String] = []
        for i in 0...49{
            arregloManzanaSeleccionada.append("animManzana" + "\(i)")
        }
        // Fresa
        var arregloFresaSeleccionada : [String] = []
        for i in 0...77{
            arregloFresaSeleccionada.append("animFresaDespertando" + "\(i)")
        }
        // Cereza
        var arregloCerezaSeleccionada : [String] = []
        for i in 0...19{
            arregloCerezaSeleccionada.append("animCerezas" + "\(i)")
        }
        // Kiwi
        var arregloKiwiSeleccionada : [String] = []
        for i in 0...84{
            arregloKiwiSeleccionada.append("animKiwiCaminando" + "\(i)")
        }
        // Limon
        var arregloLimonSeleccionada : [String] = []
        for i in 0...33{
            arregloLimonSeleccionada.append("animLemonSelect" + "\(i)")
        }
        // Platano
        var arregloPlatanoSeleccionada : [String] = []
        for i in 0...44{
            arregloPlatanoSeleccionada.append("animPlatano" + "\(i)")
        }
        // Naranja
        var arregloNaranjaSeleccionada : [String] = []
        for i in 0...44{
            arregloNaranjaSeleccionada.append("animNaranja" + "\(i)")
        }
        // Pera
        var arregloPeraSeleccionada : [String] = []
        for i in 0...27{
            arregloPeraSeleccionada.append("animPear" + "\(i)")
        }
        // Sandia
        var arregloSandiaSeleccionada : [String] = []
        for i in 0...39{
            arregloSandiaSeleccionada.append("animSandia" + "\(i)")
        }
        
        switch nombreFruta {
        case "Apple":
            arregloFrutaSeleccionada = arregloManzanaSeleccionada
        case "Strawberry":
            arregloFrutaSeleccionada = arregloFresaSeleccionada
        case "Cherry":
            arregloFrutaSeleccionada = arregloCerezaSeleccionada
        case "Kiwi":
            arregloFrutaSeleccionada = arregloKiwiSeleccionada
        case "Lemon":
            arregloFrutaSeleccionada = arregloLimonSeleccionada
        case "Banana":
            arregloFrutaSeleccionada = arregloPlatanoSeleccionada
        case "Orange":
            arregloFrutaSeleccionada = arregloNaranjaSeleccionada
        case "Pear":
            arregloFrutaSeleccionada = arregloPeraSeleccionada
        case "Watermelon":
            arregloFrutaSeleccionada = arregloSandiaSeleccionada
        default:
            arregloFrutaSeleccionada = []
        }
        
        
        for imagen in arregloFrutaSeleccionada {
            arregloUIImage.append(UIImage(named: imagen)!)
        }
        
        imgFrutaSeleccionada.animationImages = arregloUIImage
        imgFrutaSeleccionada.animationDuration = TimeInterval(duracion)
        imgFrutaSeleccionada.startAnimating()
        
        lblFrutaSeleccionada.text = nombreFruta
    }
    
    // Audios correspondientes para cada TAP
    func playAudio(fileNameAndExtension: String) {
        if(reproduccion){
            let path = Bundle.main.path(forResource: fileNameAndExtension, ofType: nil)
            let url = URL(fileURLWithPath: path!)
            
            do{
                player = try AVAudioPlayer(contentsOf:url)
            }catch{}
        }else{
            reproduccion = true
        }
        
        if (player != nil) {
            player?.play()
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        
    }
    
    

}
