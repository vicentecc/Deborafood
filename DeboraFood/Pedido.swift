//
//  Pedido.swift
//  DeboraFood
//
//  Created by admin on 07/04/17.
//  Copyright © 2017 admin. All rights reserved.
//

import Foundation

class Pedido: NSObject, NSCoding{
    var nome: String!
    var endereco: String!
    var telefone: String!
    var produtos: Array<Produto>!
    
    override init(){
        self.produtos = Array<Produto>()
    }
    
    required init?(coder aDecoder: NSCoder){
        self.produtos = aDecoder.decodeObject(forKey: "produtos") as! Array<Produto>
    }
    
    func encode(with aCoder: NSCoder){
        aCoder.encode(self.produtos, forKey: "pedidos")
    }
    
}
