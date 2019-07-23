//
//  ConfiguracoesViewController.swift
//  ChallengeFeriasNaturezaSelvagem
//
//  Created by Luiz Henrique Monteiro de Carvalho on 15/07/19.
//  Copyright © 2019 Luiz Henrique Monteiro de Carvalho. All rights reserved.
//

import UIKit
import UserNotifications

class ConfiguracoesViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }
    

    @IBOutlet weak var pickerHoras: UIPickerView!
    var pickerData: [String] = [String]()
    
    
    @IBOutlet weak var somSwitchOutlet: UISwitch!
    @IBOutlet weak var repeteSwitchOutlet: UISwitch!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.pickerHoras.delegate = self
        self.pickerHoras.dataSource = self
        pickerData = ["1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24"]
        
        
        
        
        
        /*
        let center = UNUserNotificationCenter.current()
        let content = UNMutableNotificationContent()
        
        content.title = "Inspiração"
        content.subtitle = "Um grande dia para o sucesso"
        content.body = "Veja uma frase inspiradora"
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
        }*/
        
        

        // Do any additional setup after loading the view.
    
        
     
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
}
