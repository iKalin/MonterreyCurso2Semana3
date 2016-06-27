//
//  InterfaceController.swift
//  RelojPizza WatchKit Extension
//
//  Created by Mario E Salvatierra V on 6/24/16.
//  Copyright © 2016 Dunas. All rights reserved.
//

import WatchKit
import Foundation

//main controller
class InterfaceController: WKInterfaceController {

    var theneworder = Order()
    @IBOutlet var confirmarLabel: WKInterfaceButton!
    
    @IBOutlet var hereLabel: WKInterfaceLabel!
    
    @IBAction func onTamaño() {
        
        self.pushControllerWithName("tamaño", context: theneworder)
        //self.presentControllerWithName("tamaño", context: theneworder)
    }
    
    @IBAction func onMasa() {
        self.pushControllerWithName("masa", context: theneworder)
        //self.presentControllerWithName("masa", context: theneworder)
    }
    
    @IBAction func onTipoDeQueso() {
        self.pushControllerWithName("queso", context: theneworder)
        //self.presentControllerWithName("queso", context: theneworder)
    }
    
    @IBAction func onIngredientes() {
        self.pushControllerWithName("ingredientes", context: theneworder)
        //self.presentControllerWithName("ingredientes", context: theneworder)
        
    }
    @IBAction func onConfirmar() {
        self.pushControllerWithName("confirmar", context: theneworder)
       // self.presentControllerWithName("confirmar", context: theneworder)
       
    }
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        
        
        if let theoldorder = context {
            
        theneworder = theoldorder as! Order
//        print(theneworder.tamaño)
//        print(theneworder.tipoDeMasa)
//        print(theneworder.tipoDeQueso)
//        print(theneworder.ingredientesXtra)
            
        }
      
    }

    func disableConfirmar() {
        var ordenIsComplete = false
        
        for (_, valor) in theneworder.ingredientesXtra {
            if valor == true {
                ordenIsComplete = valor
            }
        }
        
        if !ordenIsComplete {
            self.confirmarLabel.setBackgroundColor(UIColor.lightGrayColor())
            self.confirmarLabel.setEnabled(false)
            self.confirmarLabel.setTitle("al menos un ingrediente")
            
            self.animateWithDuration(0.2, animations:
                                            {  self.hereLabel.setHidden(false)
                                                
                                            })
            
        } else {
            self.confirmarLabel.setBackgroundColor(UIColor.darkGrayColor())
            
            self.confirmarLabel.setTitle("Revisar Orden")
            self.confirmarLabel.setEnabled(true)
            self.hereLabel.setHidden(true)
        }
    }
    
//    func emoji() {
//        let myemos = ["😠","🤔","😱","😨","😓","😭","🤖"]
//        let xemos = myemos.count
//        let anyemo  = Int(arc4random_uniform(UInt32(xemos)))
//        
//        self.animateWithDuration(0.5, animations:
//                                        {
//                                           self.hereLabel.setText(myemos[anyemo])
//                                            self.emoji()
//        
//                                        })
//        
//    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        //print(theneworder.ingredientesXtra)
        self.confirmarLabel.setBackgroundColor(UIColor.darkGrayColor())
        
        
        disableConfirmar()
        
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
