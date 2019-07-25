//
//  FrasesTableViewController.swift
//  ChallengeFeriasNaturezaSelvagem
//
//  Created by Luiz Henrique Monteiro de Carvalho on 17/07/19.
//  Copyright © 2019 Luiz Henrique Monteiro de Carvalho. All rights reserved.
//

import UIKit
import CoreData

public class FrasesTableViewController: UITableViewController{
    
    private var frases: [Frase] = []
    
    public override func viewWillAppear(_ animated: Bool) {
        fetch()
    }

    func fetch() {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        do{
            frases = try context.fetch(Frase.fetchRequest())
        }
        catch{
            fatalError("Nao foi possivel recuperar os dados")
        }
        
        tableView.reloadData()
    }
    
    
    
    
    public override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    public override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return frases.count
    }
    
    public override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    
    
    
    public override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.backgroundColor = #colorLiteral(red: 1, green: 0.9773344398, blue: 0.8364419341, alpha: 1)
        cell.textLabel?.textColor = #colorLiteral(red: 0.4232721925, green: 0.4631288052, blue: 0.5634016395, alpha: 1)
        
        cell.textLabel?.text = frases[indexPath.row].descricao
        return cell
        
    }
    
    
    
    //removedor de frases
    public override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCell.EditingStyle.delete{
            let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
            guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
                return
            }
            let managedContext = appDelegate.persistentContainer.viewContext
            let fetchRequest = NSFetchRequest<NSFetchRequestResult>.init(entityName: "Frase")
            let predicate = NSPredicate(format: "id == '\(frases[indexPath.row].id ?? "0")'")
            fetchRequest.predicate = predicate
            do {
                let object = try managedContext.fetch(fetchRequest)
                if object.count == 1 {
                    let objectUpdate = object[0] as! NSManagedObject
                    context.delete(objectUpdate)
                }
            } catch {
                print(error)
            }
            
            fetch()
            
        }
    }
    
    
    
    
    
    //Vai para a celula selecionada
    public override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detalheController = storyboard?.instantiateViewController(withIdentifier: "DetalheFraseCriadaViewController") as? DetalheFraseCriadaViewController
        detalheController?.descricaoDtl = frases[indexPath.row].descricao ?? "Nenhuma frase"
        detalheController?.citacaoDtl = frases[indexPath.row].citacao ?? "Nenhuma citação"
        detalheController?.significadoDtl = frases[indexPath.row].significado ?? "Nenhum significado"
        
        
        self.navigationController?.pushViewController(detalheController!, animated: true)
    }
    
    
}
