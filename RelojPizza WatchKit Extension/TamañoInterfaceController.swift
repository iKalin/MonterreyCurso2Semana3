//
//  TamañoInterfaceController.swift
//  RelojPizza
//
//  Created by Mario E Salvatierra V on 6/25/16.
//  Copyright © 2016 Dunas. All rights reserved.
//

import WatchKit
import Foundation


class TamañoInterfaceController: WKInterfaceController {

    var theneworder: Order!
    
    @IBOutlet var chicaBoton: WKInterfaceButton!
    @IBOutlet var medianaBoton: WKInterfaceButton!
    @IBOutlet var grandeBoton: WKInterfaceButton!
    
    
    @IBAction func onChica() {
        theneworder.tamaño = "Chica"
        //print(theneworder.tamaño)
        //self.pushControllerWithName("main", context: theneworder)
        tamanoSeleccionado(theneworder.tamaño)
        
    }
    
    func tamanoSeleccionado(tamano: String){
        let selectedAttribute = [NSForegroundColorAttributeName: UIColor.redColor(),
                       NSFontAttributeName: UIFont.systemFontOfSize(30.0)]
        let unSelectedAttribute = [NSForegroundColorAttributeName: UIColor.whiteColor(),
                       NSFontAttributeName: UIFont.systemFontOfSize(15.0)]
        
        switch tamano {
            case "Chica":
                chicaBoton.setAttributedTitle(NSAttributedString(string: "Chica", attributes: selectedAttribute))
                medianaBoton.setAttributedTitle(NSAttributedString(string: "Mediana", attributes: unSelectedAttribute))
                grandeBoton.setAttributedTitle(NSAttributedString(string: "Grande", attributes: unSelectedAttribute))
            case "Mediana":
                chicaBoton.setAttributedTitle(NSAttributedString(string: "Chica", attributes: unSelectedAttribute))
                medianaBoton.setAttributedTitle(NSAttributedString(string: "Mediana", attributes: selectedAttribute))
                grandeBoton.setAttributedTitle(NSAttributedString(string: "Grande", attributes: unSelectedAttribute))

            case "Grande":
                chicaBoton.setAttributedTitle(NSAttributedString(string: "Chica", attributes: unSelectedAttribute))
                medianaBoton.setAttributedTitle(NSAttributedString(string: "Mediana", attributes: unSelectedAttribute))
                grandeBoton.setAttributedTitle(NSAttributedString(string: "Grande", attributes: selectedAttribute))
            default:
                chicaBoton.setAttributedTitle(NSAttributedString(string: "Chica", attributes: unSelectedAttribute))
                medianaBoton.setAttributedTitle(NSAttributedString(string: "Mediana", attributes: unSelectedAttribute))
                grandeBoton.setAttributedTitle(NSAttributedString(string: "Grande", attributes: unSelectedAttribute))

        }
        
    }
    
    
    @IBAction func onMediana() {
        theneworder.tamaño = "Mediana"
        //print(theneworder.tamaño)
        //self.pushControllerWithName("main", context: theneworder)
        tamanoSeleccionado(theneworder.tamaño)    }
    
    @IBAction func onGrande() {
        
        theneworder.tamaño = "Grande"
       // print(theneworder.tamaño)
        //self.pushControllerWithName("main", context: theneworder)
        tamanoSeleccionado(theneworder.tamaño)
    }
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        
        let theoldorder = context as! Order
        theneworder = theoldorder
        
        
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        
        
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
        // self.popToRootController()
       /* let act = WKAlertAction(title: "OK", style: .Default, handler: {})
        
        self.presentAlertControllerWithTitle("OJO", message: "Si no escojes un tipo de masa no podras completar la orden", preferredStyle: .ActionSheet, actions:[act]) */
        
       
        
    }

}
