//
//  SubjectsViewCell.swift
//  CursoiOS
//
//  Created by Dev2 on 26/09/2019.
//  Copyright © 2019 ds. All rights reserved.
//

import UIKit


// creando clase que controle TableViewCell
class SubjectsViewCell: UICollectionViewCell {
    
    //Declaración de los Outlets que he creado dentro de mi TableCellView
    @IBOutlet weak var subjectView: UIView!
    @IBOutlet weak var subjectImageView: UIImageView!
    @IBOutlet weak var subjectNameLabel: UILabel!
    
    
    // Luego enlazar desde Main.Storyboard seleccionando el TABLE VIEW CELL para pdoer acceder
    // a los outlets que he declarado y posteriormente enlazarlos con los objetos dentro de la vista.
    
    
    //funcion para borrar o limpiar la celda y prepararla para reusarla
    override func prepareForReuse() {
        subjectImageView.image = nil
        subjectNameLabel.text = nil
    }
    
    //se llama solo la primera vezs que se carga la vista es decir en memoria.(este metodo nos permite configurar la vista de la view)
    override func awakeFromNib() {
        super.awakeFromNib()
        
        //redondea las 4 esquinas de la vista
        subjectView.layer.cornerRadius = 0.8
        
        subjectView.configureShadows()
       subjectView.layer.cornerRadius = 8.0
//        subjectView.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMinXMaxYCorner]
        
    }
    
    //Declarando una  funcion para pasarle datos en las celdas de tipo: Student que es la clase que ya teniamos
    func configureCell(subject: Subject) {
        // TODO: Agregar imagen a Subject
        subjectImageView.image = UIImage(named: subject.avatar ?? "")
        subjectNameLabel.text = subject.name

        
    }
    
    
}
