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

    @IBOutlet weak var lbCliente: UILabel!
    @IBOutlet weak var lbNomeProduto: UILabel!
    @IBOutlet weak var lbQtd: UILabel!
    @IBOutlet weak var lbTotalPagar: UILabel!
    @IBOutlet weak var lbPrecoProduto: UILabel!
    let ad = UIApplication.shared.delegate as! AppDelegate
    
    
    
    @IBOutlet weak var stQtd: UIStepper!
    @IBAction func addQuantidade(_ sender: Any) {
        self.lbQtd.text = String(Int(self.stQtd.value))
        lbTotalPagar.text = String(Double(self.stQtd.value) * produto.preco)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        lbCliente.text = ad.pedido.nome
        lbQtd.text = String(Int(self.stQtd.value))
        lbNomeProduto.text = produto.nome
        lbPrecoProduto.text = String(produto.preco)
        lbTotalPagar.text = String(Double(stQtd.value) * produto.preco)
        // Do any additional setup after loading the view.
        
       
    }
    
    @IBAction func addAoPedido(_ sender: Any) {
        produto.qtd = Int(stQtd.value)
        ad.pedido.produtos.append(produto)
        self.navigationController?.popViewController(animated: true)
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
