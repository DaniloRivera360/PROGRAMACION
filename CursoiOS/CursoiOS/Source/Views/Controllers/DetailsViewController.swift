//
//  DetailsViewController.swift
//  CursoiOS
//
//  Created by Dev2 on 27/09/2019.
//  Copyright © 2019 ds. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {
    
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    @IBOutlet weak var sectionLabel1: UILabel!
    @IBOutlet weak var sectionLabel2: UILabel!
    @IBOutlet var dataCollectionView: Array<UICollectionView>!
    
    @IBOutlet weak var deleteButton: UIButton!
    
    var data: Subject?

    
    
    // MARK: - Lifecile Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    //Declarando una  funcion para pasarle datos en las celdas de tipo: Student que es la clase que ya teniamos
    
    func configure(image: String) {
        // TODO: Agregar imagen a Teacher
        imageView.image = UIImage(named: image)
    }
    
    
    func configure(title: String) {
        // TODO: Agregar imagen a Teacher
        titleLabel.text = title
    }
    
    func configure(subtitle: String) {
        // TODO: Agregar imagen a Teacher
        subtitleLabel.text = subtitle
    }
    
    func configure(section1: String) {
        // TODO: Agregar imagen a Teacher
        sectionLabel1.text = section1
    }
    
    func configure(section2: String) {
        // TODO: Agregar imagen a Teacher
        sectionLabel2.text = section2
    }
    
    func configureCollectionView() {
        dataCollectionView.forEach { collectionView in
            collectionView.dataSource = self
            collectionView.delegate = self

        }
    }
    
}

extension DetailsViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        switch collectionView.tag {
        case 0:
            return data?.teachers.count ?? 0
            
        case 1:
            return data?.students.count ?? 0
            
        default:
            return 0
        }
        
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            return UICollectionViewCell()
        }
        
        
        
    }
    
}
