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
    
    
    
    let fraseinicioarray = [ "A felicidade só é verdadeira se for compartilhada.","Gostaria de repetir o conselho que lhe dei antes: você deveria promover uma mudança radical em seu estilo de vida e fazer corajosamente coisas em que talvez nunca tenha pensado, ou que fosse hesitante demais para tentar.Tanta gente vive em circunstâncias infelizes e, contudo, não toma a iniciativa de mudar sua situação porque está condicionada a uma vida de segurança, conformismo e conservadorismo, tudo isso parece dar paz de espírito, mas na realidade nada é mais maléfico para o espírito do homem que um futuro seguro.","A coisa mais essencial do espírito vivo de um homem é sua paixão pela aventura. A alegria da vida vem de nossos encontros com novas experiências. Você está errado se acha que a alegria emana somente ou principalmente das relações humanas. Deus a distribuiu em toda a nossa volta. Está em tudo ou em qualquer coisa que possamos experimentar. Só temos de ter a coragem de dar as costas para nosso estilo de vida habitual e nos comprometer com um modo de vida não-convencional.","O que quero dizer é que você não precisa de mim ou de qualquer outra pessoa para pôr esse novo tipo de luz em sua vida. Ele está simplesmente esperando que você o pegue e tudo que tem a fazer é estender os braços. A única pessoa com quem você está lutando é com você mesmo. Espero que na próxima vez que eu o encontrar você seja um homem novo, com uma grande quantidade de novas experiências na bagagem. Não hesite nem se permita dar desculpas. Simplesmente saia e faça. Simplesmente saia e faça. Você ficará muito, muito contente por ter feito","Algumas pessoas sentem-se como se não merecessem amar. Escapando em silêncio em seus espaços vazios, tentando fechar as lacunas do passado.","É nas experiências, nas lembranças, na grande e triunfante alegria de viver na mais ampla plenitude que o verdadeiro sentido é encontrado", "Nada é mais maléfico para o espirito aventureiro do homem que um futuro seguro.","A alegria de fazer o bem é a única felicidade verdadeira.","Os que se chamam grandes homens são etiquetas que dão o seu nome aos acontecimentos históricos; e assim como as etiquetas, não têm relação com esses acontecimentos.","Assim como uma vela acende outra e pode acender milhares de outras velas, um coração ilumina outro e pode iluminar milhares de outros corações.","A sabedoria com as coisas da vida não consiste, ao que me parece, em saber o que é preciso fazer, mas em saber o que é preciso fazer antes e o que fazer depois.","Não alcançamos a liberdade buscando a liberdade, mas sim a verdade. A liberdade não é um fim, mas uma consequência.","Se você já construiu castelos no ar, não tenha vergonha deles. Estão onde devem estar. Agora, dê-lhes alicerces.","Para cada mil homens dedicados a cortar as folhas do mal, há apenas um atacando as raízes.","São precisas duas pessoas para falar a verdade, uma para falar, e outra para ouvir.","Cuidado com todas as atividades que requeiram roupas novas.","A bondade é o único investimento que nunca vai à falência.","É tão difícil observar-se a si mesmo quanto olhar para trás sem se voltar.","Uma grande verdade, mesmo mal sugerida, comove-nos mais do que uma verdade medíocre completamente exprimida."]
    
    let citacaoinicioarray = ["- Christopher McCandless","carta de Chris McCandless para Ron Franz, primeira parte - Christopher McCandless","carta de Chris McCandless para Ron Franz, segunda parte - Christopher McCandless","carta de Chris McCandless para Ron Franz, terceira parte - Christopher McCandless"," - Christopher McCandless"," - Christopher McCandless"," - Christopher McCandless"," - Liev Nikoláievich Tolstói"," - Liev Nikoláievich Tolstói"," - Liev Nikoláievich Tolstói"," - Liev Nikoláievich Tolstói"," - Liev Nikoláievich Tolstói"," - Henry David Thoreau"," - Henry David Thoreau"," - Henry David Thoreau"," - Henry David Thoreau"," - Henry David Thoreau"," - Henry David Thoreau"," - Henry David Thoreau"]
    
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
