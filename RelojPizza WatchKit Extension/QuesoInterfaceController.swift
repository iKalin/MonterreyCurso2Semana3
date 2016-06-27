//
//  QuesoInterfaceController.swift
//  RelojPizza
//
//  Created by Mario E Salvatierra V on 6/25/16.
//  Copyright © 2016 Dunas. All rights reserved.
//

import WatchKit
import Foundation


class QuesoInterfaceController: WKInterfaceController {

    var theneworder: Order!
    
    @IBOutlet var mozarelaBoton: WKInterfaceButton!
    @IBOutlet var cheddarBoton: WKInterfaceButton!
    @IBOutlet var parmesanoBoton: WKInterfaceButton!
    @IBOutlet var sinquesoBoton: WKInterfaceButton!
    
    @IBAction func onMozarela() {
        theneworder.tipoDeQueso = "Mozarela"
       // print(theneworder.tipoDeQueso)
        //self.pushControllerWithName("main", context: theneworder)
        quesoSeleccionado(theneworder.tipoDeQueso)
    }
    
    
    @IBAction func onCheddar() {
        theneworder.tipoDeQueso = "Cheddar"
      //  print(theneworder.tipoDeQueso)
        //self.pushControllerWithName("main", context: theneworder)
        quesoSeleccionado(theneworder.tipoDeQueso)
    }
    @IBAction func onParmesano() {
        theneworder.tipoDeQueso = "Parmesano"
       // print(theneworder.tipoDeQueso)
        //self.pushControllerWithName("main", context: theneworder)
        quesoSeleccionado(theneworder.tipoDeQueso)
    }
    @IBAction func onSinQueso() {
        theneworder.tipoDeQueso = "Sin Queso"
       // print(theneworder.tipoDeQueso)
       // self.pushControllerWithName("main", context: theneworder)
        quesoSeleccionado(theneworder.tipoDeQueso)
    }
    
    func quesoSeleccionado(tamano: String){
        let selectedAttribute = [NSForegroundColorAttributeName: UIColor.redColor(),
                                 NSFontAttributeName: UIFont.systemFontOfSize(24.0)]
        let unSelectedAttribute = [NSForegroundColorAttributeName: UIColor.whiteColor(),
                                   NSFontAttributeName: UIFont.systemFontOfSize(15.0)]
        
        switch tamano {
        case "Mozarela":
            mozarelaBoton.setAttributedTitle(NSAttributedString(string: "Mozarela", attributes: selectedAttribute))
            cheddarBoton.setAttributedTitle(NSAttributedString(string: "Cheddar", attributes: unSelectedAttribute))
            parmesanoBoton.setAttributedTitle(NSAttributedString(string: "Parmesano", attributes: unSelectedAttribute))
            sinquesoBoton.setAttributedTitle(NSAttributedString(string: "Sin Queso", attributes: unSelectedAttribute))
        case "Cheddar":
            mozarelaBoton.setAttributedTitle(NSAttributedString(string: "Mozarela", attributes: unSelectedAttribute))
            cheddarBoton.setAttributedTitle(NSAttributedString(string: "Cheddar", attributes: selectedAttribute))
            parmesanoBoton.setAttributedTitle(NSAttributedString(string: "Parmesano", attributes: unSelectedAttribute))
             sinquesoBoton.setAttributedTitle(NSAttributedString(string: "Sin Queso", attributes: unSelectedAttribute))
            
        case "Parmesano":
            mozarelaBoton.setAttributedTitle(NSAttributedString(string: "Mozarela", attributes: unSelectedAttribute))
            cheddarBoton.setAttributedTitle(NSAttributedString(string: "Cheddar", attributes: unSelectedAttribute))
            parmesanoBoton.setAttributedTitle(NSAttributedString(string: "Parmesano", attributes: selectedAttribute))
             sinquesoBoton.setAttributedTitle(NSAttributedString(string: "Sin Queso", attributes: unSelectedAttribute))
            
            case "Sin Queso":
                mozarelaBoton.setAttributedTitle(NSAttributedString(string: "Mozarela", attributes: unSelectedAttribute))
                cheddarBoton.setAttributedTitle(NSAttributedString(string: "Cheddar", attributes: unSelectedAttribute))
                parmesanoBoton.setAttributedTitle(NSAttributedString(string: "Parmesano", attributes: unSelectedAttribute))
                sinquesoBoton.setAttributedTitle(NSAttributedString(string: "Sin Queso", attributes: selectedAttribute))
            
        default:
            mozarelaBoton.setAttributedTitle(NSAttributedString(string: "Mozarela", attributes: unSelectedAttribute))
            cheddarBoton.setAttributedTitle(NSAttributedString(string: "Cheddar", attributes: unSelectedAttribute))
            parmesanoBoton.setAttributedTitle(NSAttributedString(string: "Parmesano", attributes: unSelectedAttribute))
             sinquesoBoton.setAttributedTitle(NSAttributedString(string: "Sin Queso", attributes: unSelectedAttribute))
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
       // self.popToRootController()
    }

}
