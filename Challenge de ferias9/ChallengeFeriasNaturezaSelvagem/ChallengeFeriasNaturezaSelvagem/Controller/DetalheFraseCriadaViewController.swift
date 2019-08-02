//
//  DetalheFraseCriadaViewController.swift
//  ChallengeFeriasNaturezaSelvagem
//
//  Created by Luiz Henrique Monteiro de Carvalho on 20/07/19.
//  Copyright © 2019 Luiz Henrique Monteiro de Carvalho. All rights reserved.
//

import UIKit
import CoreData

class DetalheFraseCriadaViewController: UIViewController {
    
    @IBOutlet weak var descricaoDetalhe: UILabel!
    @IBOutlet weak var citacaoDetalhe: UILabel!
    @IBOutlet weak var significadoDetalhe: UILabel!
    
    var descricaoDtl = ""
    var citacaoDtl = ""
    var significadoDtl = ""
    var iddtl = ""
    
    private let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        descricaoDetalhe.text = descricaoDtl
//        citacaoDetalhe.text = citacaoDtl
//        significadoDetalhe.text = significadoDtl

        // Do any additional setup after loading the view.
    }
    
    
    public override func viewWillAppear(_ animated: Bool) {
        fetch()
    }
    
    func fetch() {
        
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>.init(entityName: "Frase")
        let predicate = NSPredicate(format: "id == '\(iddtl)'")
        fetchRequest.predicate = predicate
        do{
            let object = try context.fetch(fetchRequest)
            if object.count == 1{
                let objectUpdate = object[0] as! NSManagedObject
                self.descricaoDtl = objectUpdate.value(forKey: "descricao") as! String
                self.citacaoDtl =  objectUpdate.value(forKey: "citacao") as! String
                self.significadoDtl = objectUpdate.value(forKey: "significado") as! String
                //objectUpdate.value(citacaoDtl, forKey: "citacao")
                //objectUpdate.value(significadoDtl, forKey: "significado")
                //idDtl = objectUpdate.value(forKey: "id") as! String
            }
        } catch{
            print(error)
        }
        
        
        descricaoDetalhe.text = descricaoDtl
        citacaoDetalhe.text = citacaoDtl
        significadoDetalhe.text = significadoDtl

        
        
//        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
//        do{
//
//            citacaoDtl = citacaoDetalhe.value(forKey: "citacao") as! String
//            significadoDtl = descricaoDetalhe.value(forKey: "significado") as! String
//
//        }
//        catch{
//            fatalError("Nao foi possivel recuperar os dados")
//        }
//
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? EditDetalheViewController {
            vc.descricaoDtl = self.descricaoDtl
            vc.citacaoDtl = self.citacaoDtl
            vc.significadoDtl = self.significadoDtl
            vc.iddtl = self.iddtl
        }
    }
    
    



}
