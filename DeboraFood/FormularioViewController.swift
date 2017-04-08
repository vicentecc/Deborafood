//
//  ViewController.swift
//  DeboraFood
//
//  Created by admin on 07/04/17.
//  Copyright © 2017 admin. All rights reserved.
//

import UIKit

class FormularioViewController: UIViewController {

    @IBOutlet weak var lbProduto: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let ad = UIApplication.shared.delegate as! AppDelegate
        self.lbProduto.text = ad.pedido?.produtos[0].nome
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

