//
//  File.swift
//  DeboraFood
//
//  Created by admin on 07/04/17.
//  Copyright © 2017 admin. All rights reserved.
//

import Foundation

class Produto: NSObject{
    var nome: String!
    var preco: Double!
    
    override var description: String{
        return self.nome + " -> R$: " + String(self.preco)
    }
    
    init(nome:String, preco:Double) {
        self.nome = nome
        self.preco = preco
    }
    
}
