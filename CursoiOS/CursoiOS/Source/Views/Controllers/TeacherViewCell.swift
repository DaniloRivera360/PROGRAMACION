//
//  TeacherViewCell.swift
//  CursoiOS
//
//  Created by Dev2 on 26/09/2019.
//  Copyright © 2019 ds. All rights reserved.
//

import UIKit

class TeacherViewCell: UITableViewCell {
    
    //Declaración de los Outlets que he creado dentro de mi TableCellView
    @IBOutlet weak var teacherView: UIView!
    @IBOutlet weak var teacherImageView: UIImageView!
    @IBOutlet weak var teacherNameLabel: UILabel!
    @IBOutlet weak var teacherEmailLabel: UILabel!
    
    
    // Luego enlazar desde Main.Storyboard seleccionando el TABLE VIEW CELL para pdoer acceder
    // a los outlets que he declarado y posteriormente enlazarlos con los objetos dentro de la vista.
    
    
    //funcion para borrar o limpiar la celda y prepararla para reusarla
    override func prepareForReuse() {
        teacherImageView.image = nil
        teacherNameLabel.text = nil
        teacherEmailLabel.text = nil
    }
    
    
    //se llama solo la primera vezs que se carga la vista es decir en memoria.(este metodo nos permite configurar la vista de la view)
    override func awakeFromNib() {
        super.awakeFromNib()
        
        //redondea las 4 esquinas de la vista
        teacherView.layer.cornerRadius = 10.0
        
        teacherView.configureShadows()
        
    }
    
    
    
    //Declarando una  funcion para pasarle datos en las celdas de tipo: Student que es la clase que ya teniamos
    func configureCell(teacher: Teacher) {
        // TODO: Agregar imagen a Student
        teacherImageView.image = UIImage(named: teacher.avatar ?? "")
        teacherNameLabel.text = teacher.name
        teacherEmailLabel.text = teacher.email
        
    }
    
    
    
    
}
