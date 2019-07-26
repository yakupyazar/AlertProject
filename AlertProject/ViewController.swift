//
//  ViewController.swift
//  AlertProject
//
//  Created by Yakup on 24.07.2019.
//  Copyright © 2019 Yakup. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var passWord2Text: UITextField!
    @IBOutlet weak var userNameText: UITextField!
    @IBOutlet weak var passWordText: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func signUpClicked(_ sender: Any) {
    
    
    
        
        if userNameText.text == "" {
            alertShow(title: "Uyarı", message: "Username Alanı Boş Olamaz")
        }
        else if passWordText.text == ""{
            alertShow(title: "Uyarı", message: "Password Alanı Boş Olamaz")
        }
        else if passWord2Text.text == "" {
            alertShow(title: "Uyarı", message: "Password Doğrulama Alanını Doldurunuz")
        }
        else if passWordText.text != passWord2Text.text {
            alertShow(title: "Uyarı", message: "Girdiğiniz Şifreler Birbiri İle Uyuşmuyor")
        }
        else {
            alertShow(title: "İşlem Başarılı", message: "Kullanıcı Bilgileriniz Onaylandı")
        }
        
        
    }
    
    func alertShow (title : String, message :  String)
    {
        let alert =  UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default) { (UIAlertAction) in
            // button clicked
            print("button clicked")
            
        }
        alert.addAction(okButton)
        self.present(alert,animated: true,completion: nil)
        
        
    }
    
}

