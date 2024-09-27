//
//  ControladorGeneradorCita.swift
//  boceto_1
//
//  Created by alumno on 9/27/24.
//

import UIKit

class ControladorGeneradorCita: UIViewController{
    var cita_creada: Cita? = nil
    var quien_lo_dice : String = ""
    var que_dice: String = ""
    
    @IBOutlet var quien_view: UITextField!
    @IBOutlet var que_view: UITextField!
    
    
    
    @IBAction func agregar_cita_nueva(_ sender: UIButton) {
        cita_creada = Cita(quien_lo_dijo: quien_view.text!, que_dijo: que_view.text!)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
