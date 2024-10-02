//
//  ControladorGeneradorCita.swift
//  boceto_1
//
//  Created by alumno on 9/27/24.
//

import UIKit

class ControladorGeneradorCita: UIViewController, UITextFieldDelegate{
    var cita_creada: Cita? = nil
    var quien_lo_dice : String = ""
    var que_dice: String = ""
    
    @IBOutlet var quien_view: UITextField!
    @IBOutlet var que_view: UITextField!
    
 
    var texto_quien = "Nombre"
    var texto_quedijo = "Frase"
    

    @IBAction func agregar_cita_nueva(_ sender: UIButton) {
        
        if  quien_view.text!.isEmpty || que_view.text!.isEmpty {
            mostrarAlerta(mensaje: "Por favor, completa ambos campos.")

        }
        else{
            cita_creada = Cita(quien_lo_dijo: quien_view.text!, que_dijo: que_view.text!)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        if textField.text == texto_quien || textField.text == texto_quedijo {
                textField.text = ""
        }
    }

    func textFieldDidEndEditing(_ textField: UITextField) {
        if textField.text?.isEmpty == true {
            if textField == quien_view {
                textField.text = texto_quien
            }else if textField == que_view {
                textField.text =  texto_quedijo
            }
        }
    }
    
    func mostrarAlerta(mensaje: String) {
        let alerta = UIAlertController(title: "Error", message: mensaje, preferredStyle: .alert)
        alerta.addAction(UIAlertAction(title: "OK", style: .default))
        present(alerta, animated: true)
    }
}
