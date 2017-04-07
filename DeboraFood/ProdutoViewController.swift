//
//  ProdutoViewController.swift
//  DeboraFood
//
//  Created by admin on 07/04/17.
//  Copyright © 2017 admin. All rights reserved.
//

import UIKit

class ProdutoViewController: UIViewController {
    
    var produto: Produto!
    var pedido: Pedido!

    @IBOutlet weak var lbNomeProduto: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lbNomeProduto.text = produto.nome
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
