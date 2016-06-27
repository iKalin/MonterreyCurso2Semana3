//
//  TuordenInterfaceController.swift
//  RelojPizza
//
//  Created by Mario E Salvatierra V on 6/25/16.
//  Copyright © 2016 Dunas. All rights reserved.
//

import WatchKit
import Foundation


class TuordenInterfaceController: WKInterfaceController {

    var theneworder: Order!
    
    @IBOutlet var firstLabel: WKInterfaceLabel!
    @IBOutlet var secondLabel: WKInterfaceLabel!
    @IBOutlet var thirdLabel: WKInterfaceLabel!
    @IBOutlet var fourthLabel: WKInterfaceLabel!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        let theoldorder = context as! Order
        theneworder = theoldorder
        let str1 = "Tamaño: \(theneworder.tamaño) \n"
         let str2 = "Masa: \(theneworder.tipoDeMasa) \n"
        let str3 = "Queso: \(theneworder.tipoDeQueso) \n"
       
        var str4 = "Ingredientes: "
        var Ingre = ["Ingredientes: "]
      //  let sizeI = theneworder.ingredientesXtra.count
        
        
        for (nombre, valor) in theneworder.ingredientesXtra {
            if valor == true {
                //str4 = str4 + nombre + ", "
                Ingre.append(nombre)
            }
        }
        
        
        if Ingre.count > 2 {
        for i in 2..<(Ingre.count) {
            str4 = str4 + Ingre[i] + ", "
        }
            
        }
        
        str4 = str4 + Ingre[1] + "."
        
            print(theneworder.tamaño)
        print(theneworder.tipoDeMasa)
        print(theneworder.tipoDeQueso)
        print(theneworder.ingredientesXtra)
        print("= = = = = = ")
        
        firstLabel.setText(str1)
        secondLabel.setText(str2)
        thirdLabel.setText(str3)
        fourthLabel.setText(str4)
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
