//
//  Order.swift
//  RelojPizza
//
//  Created by Mario E Salvatierra V on 6/25/16.
//  Copyright © 2016 Dunas. All rights reserved.
//

import WatchKit

class Order: NSObject {
    
    var tamaño: String = "Chica"
    
    var tipoDeMasa: String = "Delgada"
    
    var tipoDeQueso = "Mozarela"
    
    var ingredientesXtra: [String: Bool]  =
        ["Jamon":true, "Peperoni": false, "Pavo":false, "Salchicha":false, "Aceituna":false, "Pimiento":false, "Piña":false, "Anchoa":false, "Cebolla":false]
    
    
}
