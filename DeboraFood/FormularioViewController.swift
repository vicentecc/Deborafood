//
//  ViewController.swift
//  DeboraFood
//
//  Created by admin on 07/04/17.
//  Copyright © 2017 admin. All rights reserved.
//
import Foundation
import MessageUI
import UIKit

class FormularioViewController: UIViewController, MFMailComposeViewControllerDelegate {

   
    @IBOutlet weak var lbTotal: UILabel!
    let ad = UIApplication.shared.delegate as! AppDelegate
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
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

    @IBAction func realizarPedido(_ sender: Any) {
        /*
        let mailComposeViewController = configuredMailComposeViewController()
        if MFMailComposeViewController.canSendMail() {
            self.present(mailComposeViewController, animated: true, completion: nil)
        } else {
            self.showSendMailErrorAlert()
        }*/
        
        //arquivo
        //NSKeyedArchiver.archiveRootObject(self.ad.pedido, toFile: self.ad.arquivo())
            
    }
    /*
    func configuredMailComposeViewController() -> MFMailComposeViewController {
        let mailComposerVC = MFMailComposeViewController()
        mailComposerVC.mailComposeDelegate = self // Extremely important to set the --mailComposeDelegate-- property, NOT the --delegate-- property
        
        mailComposerVC.setToRecipients(["vicentecorreiacosta@gmail.com"])
        mailComposerVC.setSubject("Pedido")
        mailComposerVC.setMessageBody("Sending e-mail in-app is not so bad!", isHTML: false)
        
        return mailComposerVC
    }
    */
    /*
    func showSendMailErrorAlert() {
        let sendMailErrorAlert = UIAlertView(title: "Could Not Send Email", message: "Your device could not send e-mail.  Please check e-mail configuration and try again.", delegate: self, cancelButtonTitle: "OK")
        sendMailErrorAlert.show()
    }
    */
    
    /*
    // MARK: MFMailComposeViewControllerDelegate Method
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        controller.dismiss(animated: true, completion: nil)
    }
    */
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

