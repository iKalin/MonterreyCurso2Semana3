//
//  ConfirmarInterfaceController.swift
//  RelojPizza
//
//  Created by Mario E Salvatierra V on 6/25/16.
//  Copyright © 2016 Dunas. All rights reserved.
//

import WatchKit
import Foundation



class ConfirmarInterfaceController: WKInterfaceController {
var theneworder: Order!
    
    @IBAction func onRevisar() {
        //self.presentControllerWithName("tuorden", context: theneworder)
        self.pushControllerWithName("tuorden", context: theneworder)
    }
    
    @IBAction func onConfirmar() {
        //self.presentControllerWithName("cocinar", context: theneworder)
        self.pushControllerWithName("cocinar", context: theneworder)
    }
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        let theoldorder = context as! Order
        theneworder = theoldorder
        
        print(theneworder.tamaño)
        print(theneworder.tipoDeMasa)
        print(theneworder.tipoDeQueso)
        print(theneworder.ingredientesXtra)
        print("= = = = = = ")
        
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
        // self.popToRootController()
    }

}
