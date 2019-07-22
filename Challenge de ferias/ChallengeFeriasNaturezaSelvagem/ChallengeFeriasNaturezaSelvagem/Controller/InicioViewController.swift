//
//  InicioViewController.swift
//  ChallengeFeriasNaturezaSelvagem
//
//  Created by Luiz Henrique Monteiro de Carvalho on 15/07/19.
//  Copyright © 2019 Luiz Henrique Monteiro de Carvalho. All rights reserved.
//

import UIKit
import UserNotifications

class InicioViewController: UIViewController {

    @IBOutlet weak var fraseinicio: UILabel!
    
    @IBOutlet weak var citacaoinicio: UILabel!
    
    
    
    let fraseinicioarray = [ "A felicidade só é verdadeira se for compartilhada.","Gostaria de repetir o conselho que lhe dei antes: você deveria promover uma mudança radical em seu estilo de vida e fazer corajosamente coisas em que talvez nunca tenha pensado, ou que fosse hesitante demais para tentar.Tanta gente vive em circunstâncias infelizes e, contudo, não toma a iniciativa de mudar sua situação porque está condicionada a uma vida de segurança, conformismo e conservadorismo, tudo isso parece dar paz de espírito, mas na realidade nada é mais maléfico para o espírito do homem que um futuro seguro."]
    let citacaoinicioarray = ["- Christopher McCandless","(carta de Chris McCandless para Ron Franz, primeira parte) - Christopher McCandless"]
    let count = 0
    
    
    
    @IBOutlet weak var btnesquerdaoutlet: UIButton!
    @IBOutlet weak var btndireitaoutlet: UIButton!
    
    
    
    override func viewDidLoad() {
        
        fraseinicio.textColor = #colorLiteral(red: 0.3422210217, green: 0.3837700188, blue: 0.4996392727, alpha: 1)
        citacaoinicio.textColor = #colorLiteral(red: 0.3422210217, green: 0.3837700188, blue: 0.4996392727, alpha: 1)
        
        fraseinicio.text = fraseinicioarray[count]
        citacaoinicio.text = citacaoinicioarray[count]
        
        
        
        super.viewDidLoad()
        
        /*
        let center = UNUserNotificationCenter.current()
        let content = UNMutableNotificationContent()
        
        content.title = "Inspiração"
        content.subtitle = "Veja uma frase de hoje"
        content.body = "A frase de hoje pode ser uma boa inspiração"
        content.sound = UNNotificationSound.default
        content.threadIdentifier = "local-notifications temp"
        
        let date = Date(timeIntervalSinceNow: 10)
        let dateComponents = Calendar.current.dateComponents([.year, .month, .day, .hour, .minute, .second], from: date)
        let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: false )
        let request = UNNotificationRequest(identifier: "content", content: content, trigger: trigger)
        
        center.add(request) {(error) in
            if error != nil {
                print (error)
            }
        }
        */
        // Do any additional setup after loading the view.
        
        
    }
    
    @IBAction func btnesquerda(_ sender: Any) {
        
        
    }
    @IBAction func btndireita(_ sender: Any) {
        
        
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
