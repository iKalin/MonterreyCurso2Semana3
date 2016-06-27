//
//  MasaInterfaceController.swift
//  RelojPizza
//
//  Created by Mario E Salvatierra V on 6/25/16.
//  Copyright © 2016 Dunas. All rights reserved.
//

import WatchKit
import Foundation


class MasaInterfaceController: WKInterfaceController {
    var theneworder: Order!

    @IBOutlet var delgadaBoton: WKInterfaceButton!
    @IBOutlet var crujienteBoton: WKInterfaceButton!
    @IBOutlet var gruesaBoton: WKInterfaceButton!
    
    
    @IBAction func onDelgada() {
        theneworder.tipoDeMasa = "Delgada"
        //print(theneworder.tipoDeMasa)
       // self.pushControllerWithName("main", context: theneworder)
        masaSeleccionado(theneworder.tipoDeMasa)
    }
    
    @IBAction func onCrujiente() {
        theneworder.tipoDeMasa = "Crujiente"
       // print(theneworder.tipoDeMasa)
        //self.pushControllerWithName("main", context: theneworder)
        masaSeleccionado(theneworder.tipoDeMasa)
    }
    
    @IBAction func onGruesa() {
        theneworder.tipoDeMasa = "Gruesa"
       // print(theneworder.tipoDeMasa)
       // self.pushControllerWithName("main", context: theneworder)
        masaSeleccionado(theneworder.tipoDeMasa)
    }
    
    func masaSeleccionado(tamano: String){
        let selectedAttribute = [NSForegroundColorAttributeName: UIColor.redColor(),
                                 NSFontAttributeName: UIFont.systemFontOfSize(30.0)]
        let unSelectedAttribute = [NSForegroundColorAttributeName: UIColor.whiteColor(),
                                   NSFontAttributeName: UIFont.systemFontOfSize(15.0)]
        
        switch tamano {
        case "Delgada":
            delgadaBoton.setAttributedTitle(NSAttributedString(string: "Delgada", attributes: selectedAttribute))
            crujienteBoton.setAttributedTitle(NSAttributedString(string: "Crujiente", attributes: unSelectedAttribute))
            gruesaBoton.setAttributedTitle(NSAttributedString(string: "Gruesa", attributes: unSelectedAttribute))
        case "Crujiente":
            delgadaBoton.setAttributedTitle(NSAttributedString(string: "Delgada", attributes: unSelectedAttribute))
            crujienteBoton.setAttributedTitle(NSAttributedString(string: "Crujiente", attributes: selectedAttribute))
            gruesaBoton.setAttributedTitle(NSAttributedString(string: "Gruesa", attributes: unSelectedAttribute))
            
        case "Gruesa":
            delgadaBoton.setAttributedTitle(NSAttributedString(string: "Delgada", attributes: unSelectedAttribute))
            crujienteBoton.setAttributedTitle(NSAttributedString(string: "Crujiente", attributes: unSelectedAttribute))
            gruesaBoton.setAttributedTitle(NSAttributedString(string: "Gruesa", attributes: selectedAttribute))
        default:
            delgadaBoton.setAttributedTitle(NSAttributedString(string: "Delgada", attributes: unSelectedAttribute))
            crujienteBoton.setAttributedTitle(NSAttributedString(string: "Crujiente", attributes: unSelectedAttribute))
            gruesaBoton.setAttributedTitle(NSAttributedString(string: "Gruesa", attributes: unSelectedAttribute))
            
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
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
        //self.popToRootController()
    }

}
