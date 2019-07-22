//
//  DetalheFraseCriadaViewController.swift
//  ChallengeFeriasNaturezaSelvagem
//
//  Created by Luiz Henrique Monteiro de Carvalho on 20/07/19.
//  Copyright © 2019 Luiz Henrique Monteiro de Carvalho. All rights reserved.
//

import UIKit

class DetalheFraseCriadaViewController: UIViewController {
    
    @IBOutlet weak var descricaoDetalhe: UILabel!
    @IBOutlet weak var citacaoDetalhe: UILabel!
    @IBOutlet weak var significadoDetalhe: UILabel!
    
    var descricaoDtl = ""
    var citacaoDtl = ""
    var significadoDtl = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        descricaoDetalhe.text = descricaoDtl
        citacaoDetalhe.text = citacaoDtl
        significadoDetalhe.text = significadoDtl

        // Do any additional setup after loading the view.
    }
    
    
    



}
