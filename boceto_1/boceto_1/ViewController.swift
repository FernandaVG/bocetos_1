//
//  ViewController.swift
//  boceto_1
//
//  Created by alumno on 9/20/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBSegueAction func abrir_pantalla_citas(_ coder: NSCoder) -> ControladorPantallaCitas? {
        return ControladorPantallaCitas(muro_texto: "Hahaha", de_quien: "Calabaza", coder: coder)
    }
}

