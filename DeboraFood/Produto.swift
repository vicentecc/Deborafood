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
    var qtd: Int!
    
    override var description: String{
        return self.nome + " --------> R$: " + String(self.preco)
    }
    
    var descriptionCarrinho: String{
        var total: Double = self.preco * Double(self.qtd)
        return String(self.qtd) + " | " + self.nome + " -------- " + "R$" + String(total)
    }
    
    init(nome:String, preco:Double) {
        self.nome = nome
        self.preco = preco
    }
    
}
