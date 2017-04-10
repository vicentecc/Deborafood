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
        
        self.nome = aDecoder.decodeObject(forKey: "nome") as! String
        self.endereco = aDecoder.decodeObject(forKey: "endereco") as! String
        self.telefone = aDecoder.decodeObject(forKey: "telefone") as! String
        self.produtos = aDecoder.decodeObject(forKey: "produtos") as! Array<Produto>
    }
    
    func encode(with aCoder: NSCoder){

        aCoder.encode(self.nome, forKey: "nome")
        aCoder.encode(self.endereco, forKey: "endereco")
        aCoder.encode(self.telefone, forKey: "telefone")
        aCoder.encode(self.produtos, forKey: "produtos")
    }

    
}
