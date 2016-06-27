//
//  CocinarInterfaceController.swift
//  RelojPizza
//
//  Created by Mario E Salvatierra V on 6/26/16.
//  Copyright © 2016 Dunas. All rights reserved.
//

import WatchKit
import Foundation


class CocinarInterfaceController: WKInterfaceController {
    
    @IBAction func onOtraOrden() {
        //let newContext = Order()
    
        self.popToRootController()
       // self.presentControllerWithName("main", context: newContext)
    
        
    }
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
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
