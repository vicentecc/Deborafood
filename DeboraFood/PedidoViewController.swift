//
//  PedidoViewController.swift
//  DeboraFood
//
//  Created by admin on 08/04/17.
//  Copyright © 2017 admin. All rights reserved.
//

import UIKit

class PedidoViewController: UIViewController {
    
    
    
    @IBOutlet weak var tfNome: UITextField!
    @IBOutlet weak var tfEndereco: UITextField!
    @IBOutlet weak var tfTelefone: UITextField!
    
    @IBAction func criarPedido(_ sender: Any) {
        let ad = UIApplication.shared.delegate as! AppDelegate
        ad.pedido?.nome = tfNome.text
        ad.pedido?.telefone = tfTelefone.text
        ad.pedido?.endereco = tfEndereco.text
    }

    override func viewDidLoad() {
        super.viewDidLoad()

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
