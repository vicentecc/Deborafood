//
//  ViewController.swift
//  DeboraFood
//
//  Created by admin on 07/04/17.
//  Copyright © 2017 admin. All rights reserved.
//

import UIKit

class FormularioViewController: UIViewController {

   
    @IBOutlet weak var lbTotal: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let ad = UIApplication.shared.delegate as! AppDelegate
        
        var produtos: Array<Produto> = ad.pedido.produtos
        var total: Double = 0
        
        for produto in produtos{
            var qtd = Double(produto.qtd)
            var preco = produto.preco
            
            total += qtd * preco!
        }
       self.lbTotal.text = String(total)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

