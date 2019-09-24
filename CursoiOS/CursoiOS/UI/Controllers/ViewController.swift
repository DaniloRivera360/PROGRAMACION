//
//  ViewController.swift
//  CursoiOS
//
//  Created by David Jardon on 19/09/2019.
//  Copyright © 2019 ds. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var actionButton: UIButton!
    @IBOutlet weak var tableView: UITableView!
    
    @IBAction func onButtonPressed(_ sender: UIButton) {
        
        // se imprime un mensaje al presionar el boton.
        print("Button Pressed")
        // se cambia el texto del label al presionar el boton
        labelName.text = "He pulsado el boton"
        labelName.textAlignment = .center
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        actionButton.setTitle("MI BOTON", for: .normal)
        
    }
    
    override func viewWillAppear() {
        super.viewWillAppear(false)
        labelName.text = "JUMP"
    
        
    }
    


}

