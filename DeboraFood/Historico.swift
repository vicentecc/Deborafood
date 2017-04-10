//
//  Historico.swift
//  DeboraFood
//
//  Created by admin on 10/04/17.
//  Copyright © 2017 admin. All rights reserved.
//

import Foundation

class Historico: NSObject, NSCoding{
    var pedidos: Array<Pedido>!
    
    override init(){
        self.pedidos = Array<Pedido>()
    }
    
    required init?(coder aDecoder: NSCoder){
        self.pedidos = aDecoder.decodeObject(forKey: "gastos") as! Array<Pedido>

    }
    
    func encode(with aCoder: NSCoder){
       aCoder.encode(self.pedidos, forKey: "gastos")
    }
    
    var descriptionHistorico: String{
        return "teste"
    }
}
