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
    var repetirNotificacao = true
    

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.pickerHoras.delegate = self
        self.pickerHoras.dataSource = self
        pickerData = ["1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24"]
//        _ = UNUserNotificationCenter.current()
//        _ = UNMutableNotificationContent()

        
    }
    
    
    @IBAction func btnCriarNotificacao(_ sender: Any) {
        
        let notificationCenter = UNUserNotificationCenter.current()
        let content = UNMutableNotificationContent()
        
        content.title = "Inspire-se"
        content.subtitle = "Um grande dia para o sucesso"
        content.body = "Veja uma frase inspiradora"
        content.threadIdentifier = "local-notifications temp"
        
        content.badge = 1
        
        if self.somSwitchOutlet.isOn{
            content.sound = UNNotificationSound.default
        }
        else{
            content.sound = .none
        }
        
       
        
        if self.repeteSwitchOutlet.isOn{
            repetirNotificacao = true
            
        }
        else{
            repetirNotificacao = false
            
        }
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: TimeInterval((self.pickerHoras.selectedRow(inComponent: 0) + 1)*10), repeats: repetirNotificacao)
        
        let request = UNNotificationRequest(identifier: "content", content: content, trigger: trigger)
        
        notificationCenter.add(request) {(error) in
            if error != nil {
                print (error)
            }
            
        }
    }

    @IBAction func btnCancelarNotificacao(_ sender: Any) {
        let notificationCenter = UNUserNotificationCenter.current()
        notificationCenter.removeAllDeliveredNotifications()    // to remove all delivered notifications
        notificationCenter.removeAllPendingNotificationRequests()   // to remove all pending notifications
        UIApplication.shared.applicationIconBadgeNumber = 0 // to clear the icon notification badge
        
    }
    

//        let notificationCenter = UNUserNotificationCenter.current()
//        notificationCenter.removeAllDeliveredNotifications()    // to remove all delivered notifications
//        notificationCenter.removeAllPendingNotificationRequests()   // to remove all pending notifications
//        UIApplication.shared.applicationIconBadgeNumber = 0 // to clear the icon notification badge
    
    
        
    

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

