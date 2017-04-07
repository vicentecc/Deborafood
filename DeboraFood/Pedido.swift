//
//  Pedido.swift
//  DeboraFood
//
//  Created by admin on 07/04/17.
//  Copyright © 2017 admin. All rights reserved.
//

import Foundation

class Pedido: NSObject{
    var nome: String!
    var endereco: String!
    var telefone: Int!
    var produtos: Array<Produto>!
    
    
    override init(){
        self.produtos = Array<Produto>()
    }
    
 
}
