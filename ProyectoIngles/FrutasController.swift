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
    @IBOutlet weak var imgFrutaSeleccionada: UIImageView! // Outlet de la imagen superior
    @IBOutlet weak var lblFrutaSeleccionada: UILabel! // Label del nombre de la fruta
    
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
        
            // En esta parte hice una funcion que está abajo donde le mando el nombre de la fruta para el SWITCH y el nombre de mi OUTLET segun la fruta, que en este caso es mi imgPera
        animationImageMiniaturas(nombreFruta: "Pera", imageViewFruta: imgPera, duracion: 2)
            // Faltaría poner todas las demás frutas aquí pero solo tengo la animación de la pera
        // FIN Atributos para las miniaturas
    }
    
    // Esta es la función que uso donde recibo el nombre de la fruta, su outlet y la duración de la animación
    func animationImageMiniaturas(nombreFruta: String, imageViewFruta: UIImageView, duracion: Int) {
        
        // Este arreglo es el que va a cambiar en los CASE del SWITCH
        var arregloFruta : [String] = []
        // Este arreglo de UIImage lo necesito porque en el for que está mas abajo lo voy a llenar con cada nombre de las imágenes para hacer la secuencia según la fruta
        var arregloUIImage : [UIImage] = []
        
        // Secuencia de imágenes de cada fruta (en miniaturas)
        // Estos son los arreglos con los nombres en orden de cada imagen que se va a usar segun la fruta
        let arregloManzana : [String] = []
        let arregloFresa : [String] = []
        let arregloCereza : [String] = []
        let arregloKiwi : [String] = []
        let arregloLimon : [String] = []
        let arregloPlatano : [String] = []
        let arregloNaranja : [String] = []
        let arregloPera : [String] = ["animPera00", "animPera01", "animPera02",
                                      "animPera03", "animPera04", "animPera05", "animPera06", "animPera07",
                                      "animPera08", "animPera09", "animPera10", "animPera11", "animPera12",
                                      "animPera13", "animPera14", "animPera15", "animPera16", "animPera17",
                                      "animPera18", "animPera19", "animPera20", "animPera21", "animPera22",
                                      "animPera23", "animPera24", "animPera25", "animPera26", "animPera27",
                                      "animPera28", "animPera29"]
        let arregloSandia : [String] = []
        // FIN Secuencia de imágenes de cada fruta (en miniaturas)
        
        
        // Este es el switch que va a cambiar según el nombre que se mandó cuando lo llamamos arriba, en este caso, si llamo a la PERA que ya tengo, voy a igualar mi arregloFruta que lo declaré en esta funcion con el arregloPera que ya tiene el nombre de cada imágen
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
        
        // En este for, declaro una variable llamada "imagen", puede ser cualquier nombre pero es el que va a recorrer el arregloFruta según la fruta que le mandé en el switch anterior
        for imagen in arregloFruta {
            // Aquí es donde llenamos el arregloUIImage que declaré en un principio en esta funcion
            // Así funciona: llamo al arregloUIImage, el append(UIImage) necesita que le mande los nombres en STRING de cada imagen, entonces pongo (named: imagen) porque la variable imagen en este for es la que se va a llenar con cada nombre de cada imagen del arregloFruta y el signo de exlamación es para asegurar que SI va a recibir algo.
            arregloUIImage.append(UIImage(named: imagen)!)
        }
        
        // aquí ya usamos el OUTLET de la fruta para mandarle las imagenes que se van a animar, en este caso mandamos el arregloUIImage que se llenó en el for
        imageViewFruta.animationImages = arregloUIImage
        // y aquí es donde tomamos el valor de la duración de la animaciñon
        imageViewFruta.animationDuration = TimeInterval(duracion)
        // y aquí ya se pide que inicie la animación
        imageViewFruta.startAnimating()
    }
    
    // Acciones de TAP
    // Estos son todas las diferentes acciones según el TAP de cada fruta, eso se hace en el storyboard a cada uno y se nombra según lo que selecciones, ya despúes se hace lo de arrastrar con control desde el storyboard hacia esta parte, tiene que ser desde cada uno de los taps que se pusieron allá y tienen que ser ACTION cuando los arrastren para acá
    @IBAction func tapManzana(_ sender: Any) {
        // aquí y en cada uno de los diferentes taps pasa esto:
        
        // llamamos al animationImageTap que es una funcion que está mas abajo, pero le mandamos la duración de la animación de la fruta que se selecciona cuando das este tap en particular, en este caso es la manzana
        // y también le mandamos el NOMBRE de la fruta que es, pero este es importante que lo llamemos en ingles porque es lo que se va a mostrar en el label
        animationImagesTap(duracion: 2, nombreFruta: "Apple")
        // Acá llamamos otra funcion que está abajo donde mandamos un string que se llama fileNameAndExtension y mandamos el nombre del audio que queremos que se reproduzca junto con la animación seleccionada.
       playAudio(fileNameAndExtension: "apple.mp3")
    }
    
    @IBAction func tapFresa(_ sender: Any) {
        animationImagesTap(duracion: 2, nombreFruta: "Strawberry")
        playAudio(fileNameAndExtension: "strawberry.mp3")
    }
    
    @IBAction func tapCereza(_ sender: Any) {
        animationImagesTap(duracion: 2, nombreFruta: "Cherry")
        playAudio(fileNameAndExtension: "cherry.mp3")
    }
    
    @IBAction func tapNaranja(_ sender: Any) {
        animationImagesTap(duracion: 2, nombreFruta: "Orange")
        playAudio(fileNameAndExtension: "orange.mp3")
    }
    
    @IBAction func tapLimon(_ sender: Any) {
        animationImagesTap(duracion: 2, nombreFruta: "Lemon")
        playAudio(fileNameAndExtension: "lemon.mp3")
    }
    
    @IBAction func tapPlatano(_ sender: Any) {
        animationImagesTap(duracion: 2, nombreFruta: "Banana")
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
        animationImagesTap(duracion: 2, nombreFruta: "Watermelon")
        playAudio(fileNameAndExtension: "watermelon.mp3")
    }
    // FIN Acciones de TAP
    
    // Acciones correspondientes para cada TAP
    // Esta es la función que ahora va a llamar a las animaciones pero de la fruta que está seleccionada y que se va a ver en el view superior, el mas grande junto con el label
    // este funciona muuuuy similar a la funcion para hacer las miniaturas
    func animationImagesTap(duracion: Int, nombreFruta: String) {
        
        var arregloFrutaSeleccionada : [String] = []
        var arregloUIImage : [UIImage] = []
        
        // Secuencia de imágenes de cada fruta (seleccionada)
        // estos son los strings de las imagenes de la animacion que se va a ver en el image view grande
        let arregloManzanaSeleccionada : [String] = []
        let arregloFresaSeleccionada : [String] = []
        let arregloCerezaSeleccionada : [String] = []
        let arregloKiwiSeleccionada : [String] = []
        let arregloLimonSeleccionada : [String] = []
        let arregloPlatanoSeleccionada : [String] = []
        let arregloNaranjaSeleccionada : [String] = []
        let arregloPeraSeleccionada : [String] = ["animPera00", "animPera01", "animPera02",
                                      "animPera03", "animPera04", "animPera05", "animPera06", "animPera07",
                                      "animPera08", "animPera09", "animPera10", "animPera11", "animPera12",
                                      "animPera13", "animPera14", "animPera15", "animPera16", "animPera17",
                                      "animPera18", "animPera19", "animPera20", "animPera21", "animPera22",
                                      "animPera23", "animPera24", "animPera25", "animPera26", "animPera27",
                                      "animPera28", "animPera29"]
        let arregloSandiaSeleccionada : [String] = []
        
        // switch según el nombre de la fruta que mandaste desde el tap de cada uno
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
        
        // misma funcion que la funcion de las miniaturas
        for imagen in arregloFrutaSeleccionada {
            arregloUIImage.append(UIImage(named: imagen)!)
        }
        
        imgFrutaSeleccionada.animationImages = arregloUIImage
        imgFrutaSeleccionada.animationDuration = TimeInterval(duracion)
        imgFrutaSeleccionada.startAnimating()
        
        // y aquí es donde le mandamos el string que mandamos desde el tap, se lo mandamos al label para que lo veamos en la pantalla
        lblFrutaSeleccionada.text = nombreFruta
    }
    
    // Audios correspondientes para cada TAP
    // esta es la funcion que inicia los sonidos
    func playAudio(fileNameAndExtension: String) {
        // si la reproduccion es TRUE (es la variable global hasta arriba)
        if(reproduccion){
            // llenamos un path con el fileNameAndExtension que es el NOMBRE DEL SONIDO QUE MANDAMOS en el TAP
            let path = Bundle.main.path(forResource: fileNameAndExtension, ofType: nil)
            // y la url se llena con el path anterior y con el simbolo ! para asegurar que SI hay valor
            let url = URL(fileURLWithPath: path!)
            // este do catch es obligatorio
            do{
                // aquí llamamos a player (variable global que está hasta arriba)
                // y lo llenamos con la variable url anterior
                player = try AVAudioPlayer(contentsOf:url)
            }catch{}
        // esto es para que si la reproduccion es FALSE se vuelva TRUE
        }else{
            reproduccion = true
        }
        
        // y esto no se pa que es pero se pone xd
        // saludos, los tkm
        if (player != nil) {
            player?.play()
        }
    }
    
    // esto no se que es pero si lo tienen no lo borren
    // creo que por ahora no nos sirve para nada pero igual aviso por si acaso xd
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        
    }
    
    

}
