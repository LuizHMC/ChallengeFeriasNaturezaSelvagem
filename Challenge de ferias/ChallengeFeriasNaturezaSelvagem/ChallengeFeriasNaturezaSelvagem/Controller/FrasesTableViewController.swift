//
//  FrasesTableViewController.swift
//  ChallengeFeriasNaturezaSelvagem
//
//  Created by Luiz Henrique Monteiro de Carvalho on 17/07/19.
//  Copyright © 2019 Luiz Henrique Monteiro de Carvalho. All rights reserved.
//

import UIKit

public class FrasesTableViewController: UITableViewController{
    
    private var frases: [Frase] = []
    
    public override func viewWillAppear(_ animated: Bool) {
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
    
    public override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = frases[indexPath.row].descricao
        return cell
        
    }
    
    
}
