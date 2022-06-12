//
//  AddToCommunityViewController.swift
//  ExampleDelegation
//
//  Created by Martin Smith on 12/06/2022.
//

import UIKit

protocol AddNewContact {
    // addContact fonksiyonunu yerine getiren diger mainVC, fonksiyonun icerigini orada bulabilirsin.
    //Madem isi diger VC yapacak neden bu VC'ye yazdik.
    //Cunku buradaki bilgileri oraya tasiyacak ve islem diger VC'de gerceklestirilecek
    func addContact(_ controller: AddToCommunityViewController, with item: Contacts)
}

class AddToCommunityViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var surnameTextField: UITextField!
    @IBOutlet weak var titleTextField: UITextField!
    
    // -> Protocol'u kullanabilmek icin delegate olusturmaliyiz!
    var delegate: AddNewContact?
    var newContact = Contacts(name: "", surname: "", title: "")

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func pressedAddButton(_ sender: UIButton) {
        newContact.name = nameTextField.text!
        newContact.surname = surnameTextField.text!
        newContact.title = titleTextField.text!
        
        delegate?.addContact(self, with: newContact)
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
