//
//  ViewController.swift
//  boceto_1
//
//  Created by alumno on 9/20/24.
//

import UIKit

class ViewController: UIViewController {

    var cita_para_enviar : Cita = Cita(quien_lo_dijo: "Calabaza", que_dijo: "Feliz Halloween")
    var citas_disponibles = GeneradorDeCitas()
    
    
    override func viewDidLoad() {
        
        citas_disponibles.generar_citas_falsas()
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    let valor = Int.random(in: 0...100)
    

    @IBSegueAction func abrir_pantalla_citas(_ coder: NSCoder) -> ControladorPantallaCitas? {
        return ControladorPantallaCitas(cita_para_citar: citas_disponibles.obtener_cita_aleatoria(), coder: coder)
    }
}

