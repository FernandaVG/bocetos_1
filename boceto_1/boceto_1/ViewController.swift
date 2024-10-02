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
    //Funcion para regresar a la pantalla de inicio e identificar que view contoller esta controlandolo
    @IBAction func volver_al_inicio(segue: UIStoryboardSegue){
        print("--------")
        if let pantalla_agregar_citas = segue.source as? ControladorGeneradorCita{
            if pantalla_agregar_citas.cita_creada != nil {
                citas_disponibles.agregar_cita(pantalla_agregar_citas.cita_creada!)
            }
        }
    }
    
    //let pantalla_citas = segue.source as? ControladorPantallaCitas
    /*print(pantalla_citas?.cita_actual.texto)
     
     if let pantalla_citas = segue.source as? ControladorPantallaCitas{
     citas_disponibles.agregar_cita(pantalla_citas.cita_actual.texto, quien_lo_dijo: pantalla_citas.cita_actual.nombre)
     }
     else{
     print("Eso no era un objeto <Controlador_pantalla_citas>")
     }*/
}


