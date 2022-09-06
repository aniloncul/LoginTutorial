//
//  ViewController.swift
//  ListApp
//
//  Created by Anıl Öncül on 4.09.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate{
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var passowrd2TextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func alertLogin(titleInput: String, messageInput: String) {
        let uyariMesaji = UIAlertController(title: titleInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
        
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { UIAlertAction in
            print("ok butonuna tiklandi")
        }
        uyariMesaji.addAction(okButton)
        self.present(uyariMesaji, animated: true, completion: nil)
    }

    @IBAction func signUpTiklandi(_ sender: Any) {
        
        
        if emailTextField.text == "" {
            alertLogin(titleInput: "Hata!", messageInput: "Lütfen e-mail adresinizi giriniz!")
            
        } else if passwordTextField.text == "" {
            alertLogin(titleInput: "Hata!", messageInput: "Şifre alanı boş bırakılamaz!")
            
        } else if passwordTextField.text != passowrd2TextField.text {
            alertLogin(titleInput: "Hata!", messageInput: "Şifreler uyuşmuyor!")
            
        } else {
            alertLogin(titleInput: "Tebrikler!", messageInput: "Kayıt olundu!")
        }
        
        
    }
    
    
    
}

