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
    
    let defaults = UserDefaults.standard
    var count:Int = 0
    

    @IBOutlet weak var fraseinicio: UILabel!
    
    @IBOutlet weak var citacaoinicio: UILabel!
    
    
    
    let fraseinicioarray = [ "A felicidade só é verdadeira se for compartilhada.","Gostaria de repetir o conselho que lhe dei antes: você deveria promover uma mudança radical em seu estilo de vida e fazer corajosamente coisas em que talvez nunca tenha pensado, ou que fosse hesitante demais para tentar.Tanta gente vive em circunstâncias infelizes e, contudo, não toma a iniciativa de mudar sua situação porque está condicionada a uma vida de segurança, conformismo e conservadorismo, tudo isso parece dar paz de espírito, mas na realidade nada é mais maléfico para o espírito do homem que um futuro seguro.","A coisa mais essencial do espírito vivo de um homem é sua paixão pela aventura. A alegria da vida vem de nossos encontros com novas experiências. Você está errado se acha que a alegria emana somente ou principalmente das relações humanas. Deus a distribuiu em toda a nossa volta. Está em tudo ou em qualquer coisa que possamos experimentar. Só temos de ter a coragem de dar as costas para nosso estilo de vida habitual e nos comprometer com um modo de vida não-convencional.","O que quero dizer é que você não precisa de mim ou de qualquer outra pessoa para pôr esse novo tipo de luz em sua vida. Ele está simplesmente esperando que você o pegue e tudo que tem a fazer é estender os braços. A única pessoa com quem você está lutando é com você mesmo. Espero que na próxima vez que eu o encontrar você seja um homem novo, com uma grande quantidade de novas experiências na bagagem. Não hesite nem se permita dar desculpas. Simplesmente saia e faça. Simplesmente saia e faça. Você ficará muito, muito contente por ter feito","Algumas pessoas sentem-se como se não merecessem amar. Escapando em silêncio em seus espaços vazios, tentando fechar as lacunas do passado.","É nas experiências, nas lembranças, na grande e triunfante alegria de viver na mais ampla plenitude que o verdadeiro sentido é encontrado", "Nada é mais maléfico para o espirito aventureiro do homem que um futuro seguro.","A alegria de fazer o bem é a única felicidade verdadeira.","Os que se chamam grandes homens são etiquetas que dão o seu nome aos acontecimentos históricos; e assim como as etiquetas, não têm relação com esses acontecimentos.","Assim como uma vela acende outra e pode acender milhares de outras velas, um coração ilumina outro e pode iluminar milhares de outros corações.","A sabedoria com as coisas da vida não consiste, ao que me parece, em saber o que é preciso fazer, mas em saber o que é preciso fazer antes e o que fazer depois.","Não alcançamos a liberdade buscando a liberdade, mas sim a verdade. A liberdade não é um fim, mas uma consequência.","Se você já construiu castelos no ar, não tenha vergonha deles. Estão onde devem estar. Agora, dê-lhes alicerces.","Para cada mil homens dedicados a cortar as folhas do mal, há apenas um atacando as raízes.","São precisas duas pessoas para falar a verdade, uma para falar, e outra para ouvir.","Cuidado com todas as atividades que requeiram roupas novas.","A bondade é o único investimento que nunca vai à falência.","É tão difícil observar-se a si mesmo quanto olhar para trás sem se voltar.","Quem avança confiante na direção de seus sonhos e se empenha em viver a vida que imaginou para si encontra um sucesso inesperado em seu dia-a-dia.","Fazer todos os dias um bom dia, essa é a mais elevada das artes.","O homem mais rico é aquele cujos prazeres são mais baratos","Se queres um escudo impenetrável, permanece dentro de ti mesmo.","A vida não examinada não vale a pena ser vivida","Tente mover o mundo - o primeiro passo será mover a si mesmo.","O mundo é um livro, e quem fica sentado em casa lê somente uma página.","Tomei a decisão de fingir que todas as coisas que até então haviam entrado na minha mente não eram mais verdadeiras do que as ilusões dos meus sonhos.","A filosofia que cultivo não é nem tão bárbara nem tão inacessível que rejeite as paixões; pelo contrário, é só nelas que reside a doçura e felicidade da vida.","Não há nada que dominemos inteiramente a não ser os nossos pensamentos.","Preocupe-se com a aprovação das pessoas e você será prisioneiro de si mesmo","Grandes atos são feitos de pequenas atitudes"]
    let citacaoinicioarray = ["- Christopher McCandless","carta de Chris McCandless para Ron Franz, primeira parte - Christopher McCandless","carta de Chris McCandless para Ron Franz, segunda parte - Christopher McCandless","carta de Chris McCandless para Ron Franz, terceira parte - Christopher McCandless"," - Christopher McCandless"," - Christopher McCandless"," - Christopher McCandless"," - Liev Nikoláievich Tolstói"," - Liev Nikoláievich Tolstói"," - Liev Nikoláievich Tolstói"," - Liev Nikoláievich Tolstói"," - Liev Nikoláievich Tolstói"," - Henry David Thoreau"," - Henry David Thoreau"," - Henry David Thoreau"," - Henry David Thoreau"," - Henry David Thoreau"," - Henry David Thoreau"," - Henry David Thoreau"," - Henry David Thoreau"," - Henry David Thoreau"," - Henry David Thoreau"," - Sócrates"," - Platão"," - Santo Agostinho de Hipona"," - René Descartes", " - René Descartes"," - René Descartes"," - Lao Zi"," - Lao Zi"]
    
    
    
    
    
    @IBOutlet weak var btnesquerdaoutlet: UIButton!
    @IBOutlet weak var btndireitaoutlet: UIButton!
    
    
    func saveCount(){
        defaults.set(count, forKey: "countSave")
    }
    
    func getCount() -> Int{
        return defaults.integer(forKey: "countSave")
    }

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fraseinicio.textColor = #colorLiteral(red: 0.3422210217, green: 0.3837700188, blue: 0.4996392727, alpha: 1)
        citacaoinicio.textColor = #colorLiteral(red: 0.3422210217, green: 0.3837700188, blue: 0.4996392727, alpha: 1)
        self.count = getCount()
        fraseinicio.text = fraseinicioarray[count]
        citacaoinicio.text = citacaoinicioarray[count]
        
        if count == 0{
            btndireitaoutlet.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            btnesquerdaoutlet.backgroundColor = #colorLiteral(red: 0.521568656, green: 0.1098039225, blue: 0.05098039284, alpha: 1)
        }
        else if count == 29{
            btndireitaoutlet.backgroundColor = #colorLiteral(red: 0.521568656, green: 0.1098039225, blue: 0.05098039284, alpha: 1)
            btnesquerdaoutlet.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
        
        
        
        
//        let center = UNUserNotificationCenter.current()
//        let content = UNMutableNotificationContent()
//        
//        content.title = "Inspiração"
//        content.subtitle = "Um grande dia para o sucesso"
//        content.body = "Veja uma frase inspiradora"
//        content.sound = UNNotificationSound.default
//        content.threadIdentifier = "local-notifications temp"
//        
//        let date = Date(timeIntervalSinceNow: 10)
//        let dateComponents = Calendar.current.dateComponents([.year, .month, .day, .hour, .minute, .second], from: date)
//        let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: false )
//        let request = UNNotificationRequest(identifier: "content", content: content, trigger: trigger)
//        
//        center.add(request) {(error) in
//            if error != nil {
//                print (error)
//            }
//        }
 
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func btnesquerda(_ sender: Any) {
        
        
        if count == 0{
            //saveCount()
            
            fraseinicio.text = fraseinicioarray[count]
            citacaoinicio.text = citacaoinicioarray[count]
            
            btnesquerdaoutlet.backgroundColor = #colorLiteral(red: 0.521568656, green: 0.1098039225, blue: 0.05098039284, alpha: 1)
        }
        else if count != 0{//clicavel
            count -= 1
            //saveCount()
            if count == 0{
                saveCount()
                btnesquerdaoutlet.backgroundColor = #colorLiteral(red: 0.521568656, green: 0.1098039225, blue: 0.05098039284, alpha: 1)
                
                
                fraseinicio.text = fraseinicioarray[count]
                citacaoinicio.text = citacaoinicioarray[count]
                
                
            }
            
            
            fraseinicio.text = fraseinicioarray[count]
            citacaoinicio.text = citacaoinicioarray[count]
            
            
            btndireitaoutlet.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            
        }
        
        saveCount()
        
    }
    @IBAction func btndireita(_ sender: Any) {
        
        if count == 29{
            //saveCount()
            
            fraseinicio.text = fraseinicioarray[count]
            citacaoinicio.text = citacaoinicioarray[count]
            
            btndireitaoutlet.backgroundColor = #colorLiteral(red: 0.521568656, green: 0.1098039225, blue: 0.05098039284, alpha: 1)
        }
        else if count != 29{//clicavel
            
            count+=1
            //saveCount()

            if count == 29{
                btndireitaoutlet.backgroundColor = #colorLiteral(red: 0.521568656, green: 0.1098039225, blue: 0.05098039284, alpha: 1)
                
                
                fraseinicio.text = fraseinicioarray[count]
                citacaoinicio.text = citacaoinicioarray[count]
                
            }
            
            
            fraseinicio.text = fraseinicioarray[count]
            citacaoinicio.text = citacaoinicioarray[count]
            
            
            btnesquerdaoutlet.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)//imagem com cor e clicavel dos dois
            btndireitaoutlet.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            saveCount()
            
            
        }
        
        
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
