//
//  EditDetalheViewController.swift
//  Motus
//
//  Created by Luiz Henrique Monteiro de Carvalho on 01/08/19.
//  Copyright © 2019 Luiz Henrique Monteiro de Carvalho. All rights reserved.
//

import UIKit
import CoreData

class EditDetalheViewController: UIViewController {
    
    @IBOutlet weak var fraseEditField: UITextView!//frase.descricao
    
    @IBOutlet weak var citacaoEditField: UITextField!
    
    @IBOutlet weak var significadoEditField: UITextView!
    
//    var frase = Frase()
    var descricaoDtl = ""
    var citacaoDtl = ""
    var significadoDtl = ""
    var iddtl = ""
    
    private let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext

    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        fraseEditField.text = descricaoDtl
        citacaoEditField.text = citacaoDtl
        significadoEditField.text = significadoDtl
       
    }
    
    @IBAction func exitEditBtn(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    
    @IBAction func salvarBtn(_ sender: Any) {
     
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>.init(entityName: "Frase")
        let predicate = NSPredicate(format: "id == '\(iddtl)'")
        fetchRequest.predicate = predicate
        do{
            let object = try context.fetch(fetchRequest)
            if object.count == 1{
                let objectUpdate = object[0] as! NSManagedObject
                
//                if (fraseEditField.text == ""){
//                    
//                }
//                else{
//                    
//                }
                objectUpdate.setValue(fraseEditField.text, forKey: "descricao")
                
//                if (txtSignificadoView.text == "Significado"){
//                    frase.significado = ""
//                }
//                else{
//                    frase.significado = txtSignificadoView.text
//                }
                
                
                objectUpdate.setValue(citacaoEditField.text, forKey: "citacao")
                objectUpdate.setValue(significadoEditField.text, forKey: "significado")
                
                do{
                    try context.save()
                }catch let error as NSError{
                    print(error.code)
                }
            }
        } catch{
            print(error)
        }
        
        
        
        self.dismiss(animated: true, completion: nil)
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
