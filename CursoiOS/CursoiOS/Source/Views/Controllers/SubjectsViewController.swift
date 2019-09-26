//
//  SubjectsViewController.swift
//  CursoiOS
//
//  Created by Dev2 on 26/09/2019.
//  Copyright © 2019 ds. All rights reserved.
//

import UIKit


class SubjectsViewController: UIViewController {
    
    //MARK_ - IBOutlets
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    // MARK: - Lifecile Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureCollectionView()
        
    }
}

extension SubjectsViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    
    // Configurar TableView con opciones por defecto
       func configureCollectionView() {
           collectionView.dataSource = self
           collectionView.delegate = self
           
       }
       
 
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return defaultSubjects.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
     
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SubjectsViewCell",
                                                         for: indexPath) as! SubjectsViewCell
                
                
                if (indexPath.row < defaultSubjects.count) {
                    
                    let subject = defaultSubjects[indexPath.row]
                    cell.configureCell(subject: subject)
                    
                }
                
                return cell
            }
            


        }

   
    
//
//
//
//    // Configurar TableView con opciones por defecto
//    func configureCollectionView() {
//        collectionView.dataSource = self
//        collectionView.delegate = self
//
//    }
//
//
//    //Implementando las funciones minimas necesarias
//
//    //funcion donde se indica la cantidad de celdas que habrá en el TableView, se calcula usando la clase
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return defaultSubjects.count // mostrara las celdas tantas como elementos haya en nuestro listado.
//    }
//
//
//    // Esta funcion se ejecutara tantas veces como filas tenga en lo cual ya hemos indicado en la funcion anterior.
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "SubjectsViewCell",
//                                                 for: indexPath) as! SubjectsViewCell
//
//
//        if (indexPath.row < defaultSubjects.count) {
//
//            let subject = defaultSubjects[indexPath.row]
//            cell.configureCell(subject: subject)
//
//
//        }
//
//        return cell
//    }
//
//
//
//}
