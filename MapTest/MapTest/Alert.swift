//
//  Alert.swift
//  MapTest
//
//  Created by Дмитрий Стародубцев on 25.01.2022.
//

import UIKit

extension UIViewController {
    
    func alertAddAdress(title: String, placeholder: String,completionhendler:@escaping (String) -> Void) {
        
        let alertConroller = UIAlertController(title: title, message: nil, preferredStyle: .alert)
        let alertOk = UIAlertAction(title: "OK", style: .default) { (action) in
            
            let textField = alertConroller.textFields?.first
            guard let text = textField?.text else {return}
            completionhendler(text)
        }
        
        alertConroller.addTextField { (texField) in
            texField.placeholder = placeholder
        }
        
        let alertCancel = UIAlertAction(title: "Cancel", style: .default) { (_) in
            
        }
        alertConroller.addAction(alertOk)
        alertConroller.addAction(alertCancel)
        
        present(alertConroller, animated: true, completion: nil)
        
    }
    
    func alertError(title: String, message: String) {
        
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let alertOk = UIAlertAction (title: "OK", style: .default)
        alertController.addAction(alertOk)
        present(alertController, animated: true, completion: nil)
    }
  
}
