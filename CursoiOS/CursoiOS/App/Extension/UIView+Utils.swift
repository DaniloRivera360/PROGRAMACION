//
//  UIView+Utils.swift
//  CursoiOS
//
//  Created by Emerson Serrano on 27/09/2019.
//  Copyright © 2019 ds. All rights reserved.
//

// creando extensiones mas utiles, dando formato a las VIEW.

import UIKit


extension UIView {
    
    func configureShadows(color: UIColor = UIColor.lightGray,
                          opacity: Float = 0.9,
                          radius: CGFloat = 4.0,
                          offset: CGSize = CGSize(width: 5, height: 5)) { // tambien se puede CGSize.zero
        
        //sombrea la vista
        self.layer.shadowColor = color.cgColor
        
        //para que inicie la vista pegado
        self.layer.shadowOffset = offset
        
        // para la opacidad de la sombra
        self.layer.shadowOpacity = opacity
        
        // para darle un redondeado a las esquinas de la sombra
        self.layer.shadowRadius = radius
        
    }
    
}


