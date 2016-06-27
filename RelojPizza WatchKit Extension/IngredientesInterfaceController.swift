//
//  IngredientesInterfaceController.swift
//  RelojPizza
//
//  Created by Mario E Salvatierra V on 6/25/16.
//  Copyright © 2016 Dunas. All rights reserved.
//

import WatchKit
import Foundation


class IngredientesInterfaceController: WKInterfaceController {
    var theneworder: Order!
    
    @IBOutlet var jamonSwitch: WKInterfaceSwitch!
    @IBOutlet var peperoniSwitch: WKInterfaceSwitch!
    @IBOutlet var pavoSwitch: WKInterfaceSwitch!
    @IBOutlet var salchichaSwitch: WKInterfaceSwitch!
    @IBOutlet var aceitunaSwitch: WKInterfaceSwitch!
    @IBOutlet var pimientoSwitch: WKInterfaceSwitch!
    @IBOutlet var piñaSwitch: WKInterfaceSwitch!
    @IBOutlet var anchoaSwitch: WKInterfaceSwitch!
    @IBOutlet var cebollaSwitch: WKInterfaceSwitch!
    
    var interruptores: [WKInterfaceSwitch]!
    
    @IBAction func onJamon(value: Bool) {
        
        //print("jamonadas \(value)")
        theneworder.ingredientesXtra["Jamon"] = value
        alertaZeroIngredientes()
    }
    @IBAction func onPeperoni(value: Bool) {
        theneworder.ingredientesXtra["Peperoni"] = value
        alertaZeroIngredientes()
    }
    
    @IBAction func onPavo(value: Bool) {
        theneworder.ingredientesXtra["Pavo"] = value
        alertaZeroIngredientes()
    }
    @IBAction func onSalchicha(value: Bool) {
        theneworder.ingredientesXtra["Salchicha"] = value
        alertaZeroIngredientes()
    }
    @IBAction func onAceituna(value: Bool) {
        theneworder.ingredientesXtra["Aceituna"] = value
        alertaZeroIngredientes()
    }
    @IBAction func onPimiento(value: Bool) {
        theneworder.ingredientesXtra["Pimiento"] = value
        alertaZeroIngredientes()
    }
    @IBAction func onPiña(value: Bool) {
        theneworder.ingredientesXtra["Piña"] = value
        alertaZeroIngredientes()
    }
    @IBAction func onAnchoa(value: Bool) {
        theneworder.ingredientesXtra["Anchoa"] = value
        alertaZeroIngredientes()
    }
    @IBAction func onCebolla(value: Bool) {
        theneworder.ingredientesXtra["Cebolla"] = value
        alertaZeroIngredientes()
    }
    
    func alertaZeroIngredientes() {
        var ordenIsComplete = false
        
        for (_, valor) in theneworder.ingredientesXtra {
            if valor == true {
                ordenIsComplete = valor
            }
        }
        
        if !ordenIsComplete {
        let act = WKAlertAction(title: "OK", style: .Default , handler: {})
        self.presentAlertControllerWithTitle("OJO!", message: "Si no escojes al menos un ingrediente no podras completar la orden", preferredStyle: .Alert , actions:[act])
        }
    }
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        let theoldorder = context as! Order
        theneworder = theoldorder
    }

    override func willActivate() {
       
        // This method is called when watch view controller is about to be visible to user
        jamonSwitch.setOn(theneworder.ingredientesXtra["Jamon"]!)
        peperoniSwitch.setOn(theneworder.ingredientesXtra["Peperoni"]!)
        pavoSwitch.setOn(theneworder.ingredientesXtra["Pavo"]!)
        salchichaSwitch.setOn(theneworder.ingredientesXtra["Salchicha"]!)
        aceitunaSwitch.setOn(theneworder.ingredientesXtra["Aceituna"]!)
        pimientoSwitch.setOn(theneworder.ingredientesXtra["Pimiento"]!)
        piñaSwitch.setOn(theneworder.ingredientesXtra["Piña"]!)
        anchoaSwitch.setOn(theneworder.ingredientesXtra["Anchoa"]!)
        cebollaSwitch.setOn(theneworder.ingredientesXtra["Cebolla"]!)
        
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
      
    
        
        super.didDeactivate()
        
        
        
        //self.popToRootController()
        
    }

}
