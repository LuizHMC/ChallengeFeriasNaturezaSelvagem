//
//  FrasesCreatorController.swift
//  ChallengeFeriasNaturezaSelvagem
//
//  Created by Luiz Henrique Monteiro de Carvalho on 17/07/19.
//  Copyright © 2019 Luiz Henrique Monteiro de Carvalho. All rights reserved.
//

import UIKit
import CoreData

public class FrasesCreatorController: UIViewController, UITextViewDelegate{
    
    @IBOutlet weak var txtCitacao: UITextField!
    
    @IBOutlet weak var txtDescricaoView: UITextView!
    @IBOutlet weak var txtSignificadoView: UITextView!
    
    @IBOutlet weak var descricaoWarning: UILabel!
    //@IBOutlet weak var citacaoWarning: UILabel!
    
    private let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    
    @IBAction func exitButtonTapped(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround() 
        
        
        txtDescricaoView.text = "Frase"
        txtDescricaoView.textColor = UIColor.lightGray
        txtSignificadoView.text = "Significado"
        txtSignificadoView.textColor = UIColor.lightGray
        txtDescricaoView.delegate = self
        txtSignificadoView.delegate = self
        
        
    }
    
    
    
    public func textViewDidBeginEditing(_ textView: UITextView) {
        if txtDescricaoView.textColor == UIColor.lightGray {
            txtDescricaoView.text = nil
            txtDescricaoView.textColor = #colorLiteral(red: 0.4232721925, green: 0.4631288052, blue: 0.5634016395, alpha: 1)
        }
        if txtSignificadoView.textColor == UIColor.lightGray {
            txtSignificadoView.text = nil
            txtSignificadoView.textColor = #colorLiteral(red: 0.4232721925, green: 0.4631288052, blue: 0.5634016395, alpha: 1)
        }
    }
    
    
    public func textViewDidEndEditing(_ textView: UITextView) {
        if txtDescricaoView.text.isEmpty {
            txtDescricaoView.text = "Frase"
            txtDescricaoView.textColor = UIColor.lightGray
        }
        if txtSignificadoView.text.isEmpty {
            txtSignificadoView.text = "Significado"
            txtSignificadoView.textColor = UIColor.lightGray
        }
    }


    
    
    
    
    
    
    
    @IBAction func btnCriarTapped(_ sender: Any) {
        
        
        
        if (txtDescricaoView.text == "Frase") || (txtDescricaoView.text == ""){
            descricaoWarning.text = "Sem frase"
        }
            
        else{
            descricaoWarning.text = ""
            //citacaoWarning.text = ""
            let frase: Frase = NSEntityDescription.insertNewObject(forEntityName: "Frase", into: context) as! Frase
            frase.descricao = txtDescricaoView.text
            frase.citacao = txtCitacao.text
            
            if (txtSignificadoView.text == "Significado"){
                frase.significado = ""
            }
            else{
                frase.significado = txtSignificadoView.text
                
            }
            
            frase.id = UUID().uuidString
            do{
                try context.save()
            }
            catch{
                fatalError("Nao foi possivel armazenar os dados")
            }
            self.dismiss(animated: true, completion: nil)

        }
 
        
        
        
    }
    
    
    
}

extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}
