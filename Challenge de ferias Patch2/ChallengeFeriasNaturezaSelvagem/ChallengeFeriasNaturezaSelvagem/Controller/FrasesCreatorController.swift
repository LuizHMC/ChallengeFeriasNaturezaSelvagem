//
//  FrasesCreatorController.swift
//  ChallengeFeriasNaturezaSelvagem
//
//  Created by Luiz Henrique Monteiro de Carvalho on 17/07/19.
//  Copyright © 2019 Luiz Henrique Monteiro de Carvalho. All rights reserved.
//

import UIKit
import CoreData

public class FrasesCreatorController: UIViewController{
    
    @IBOutlet weak var txtDescricao: UITextField!
    @IBOutlet weak var txtCitacao: UITextField!
    @IBOutlet weak var txtSignificado: UITextField!
    
  //fazer verificacao por aspas e nil
    private let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    @IBAction func btnCriarTapped(_ sender: Any) {
        let frase: Frase = NSEntityDescription.insertNewObject(forEntityName: "Frase", into: context) as! Frase
        frase.descricao = txtDescricao.text
        frase.citacao = txtCitacao.text
        frase.significado = txtSignificado.text
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
