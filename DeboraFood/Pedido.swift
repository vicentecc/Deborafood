//
//  Pedido.swift
//  DeboraFood
//
//  Created by admin on 07/04/17.
//  Copyright © 2017 admin. All rights reserved.
//

import Foundation

extension Date {
    func toString() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/yyyy"
        return dateFormatter.string(from: self)
    }
}

class Pedido: NSObject, NSCoding{
    var nome: String!
    var endereco: String!
    var telefone: String!
    var data: Date!
    
    
    var produtos: Array<Produto>!
    
    override init(){
        self.produtos = Array<Produto>()
        self.data = Date()
    }
    
    var descriptionHistorio: String{
        
        return self.nome + " -- " + self.endereco + " -- " + self.data.toString()
    }
    
    
    required init?(coder aDecoder: NSCoder){
        
        self.nome = aDecoder.decodeObject(forKey: "nome") as! String
        self.endereco = aDecoder.decodeObject(forKey: "endereco") as! String
        self.telefone = aDecoder.decodeObject(forKey: "telefone") as! String
        self.data = aDecoder.decodeObject(forKey: "data") as! Date
        self.produtos = aDecoder.decodeObject(forKey: "produtos") as! Array<Produto>
    }
    
    func encode(with aCoder: NSCoder){

        aCoder.encode(self.nome, forKey: "nome")
        aCoder.encode(self.endereco, forKey: "endereco")
        aCoder.encode(self.telefone, forKey: "telefone")
        aCoder.encode(self.data, forKey: "data")
        aCoder.encode(self.produtos, forKey: "produtos")
    }

    
}
