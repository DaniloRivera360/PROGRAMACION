//
//  StudentViewController.swift
//  CursoiOS
//
//  Created by Emerson Serrano on 25/09/2019.
//  Copyright © 2019 ds. All rights reserved.
//

import UIKit


class StudensViewController: UIViewController {
    
    //MARK_ - IBOutlets
    @IBOutlet weak var tableView: UITableView!
    
    
    // MARK: - Lifecile Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureTableview()
        
    }
}

extension StudensViewController: UITableViewDataSource, UITableViewDelegate {
   
    
    // Configurar TableView con opciones por defecto
    func configureTableview() {
        tableView.dataSource = self
        tableView.delegate = self
        
    }
    
    //Implementando las funciones minimas necesarias
    
    //funcion donde se indica la cantidad de celdas que habrá en el TableView, se calcula usando la clase 
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return defaultStudents.count // mostrara las celdas tantas como elementos haya en nuestro listado.
    }
    
    
    // Esta funcion se ejecutara tantas veces como filas tenga en lo cual ya hemos indicado en la funcion anterior.
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "StudentViewCell",
                                                 for: indexPath) as! StudentViewCell
        
        
        if (indexPath.row < defaultStudents.count) {
            
            let student = defaultStudents[indexPath.row]
            cell.configureCell(student: student)
            
            
        }
        
        return cell
    }
    


}
