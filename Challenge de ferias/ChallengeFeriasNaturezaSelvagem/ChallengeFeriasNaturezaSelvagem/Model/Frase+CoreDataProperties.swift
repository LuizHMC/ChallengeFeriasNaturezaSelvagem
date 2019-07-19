//
//  Frase+CoreDataProperties.swift
//  ChallengeFeriasNaturezaSelvagem
//
//  Created by Luiz Henrique Monteiro de Carvalho on 17/07/19.
//  Copyright © 2019 Luiz Henrique Monteiro de Carvalho. All rights reserved.
//
//

import Foundation
import CoreData


extension Frase {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Frase> {
        return NSFetchRequest<Frase>(entityName: "Frase")
    }

    @NSManaged public var citacao: String?
    @NSManaged public var significado: String?
    @NSManaged public var descricao: String?

}
