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



extension UIViewController {
    
    func showToast(message : String) {
        
        let toastLabel = UILabel(frame: CGRect(x: self.view.frame.size.width/2 - 75, y: self.view.frame.size.height-100, width: 150, height: 35))
        toastLabel.backgroundColor = UIColor.black.withAlphaComponent(0.6)
        toastLabel.textColor = UIColor.white
        toastLabel.textAlignment = .center;
        toastLabel.font = UIFont(name: "Montserrat-Light", size: 12.0)
        toastLabel.text = message
        toastLabel.alpha = 1.0
        toastLabel.layer.cornerRadius = 10;
        toastLabel.clipsToBounds  =  true
        self.view.addSubview(toastLabel)
        UIView.animate(withDuration: 4.0, delay: 0.1, options: .curveEaseOut, animations: {
            toastLabel.alpha = 0.0
        }, completion: {(isCompleted) in
            toastLabel.removeFromSuperview()
        })
    } }



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
        //ad.historico.append(ad.pedido)
        if(ad.pedido.produtos.count == 0){
            showToast(message: "Nenhum pedido")
        }else{
            ad.historico.pedidos.append(ad.pedido)
            NSKeyedArchiver.archiveRootObject(self.ad.historico, toFile: self.ad.arquivo())
            ad.pedido = Pedido()
            showToast(message: "Pedido Realizado")
            
        }
    
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

