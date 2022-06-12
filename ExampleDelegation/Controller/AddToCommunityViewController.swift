//
//  AddToCommunityViewController.swift
//  ExampleDelegation
//
//  Created by Martin Smith on 12/06/2022.
//

import UIKit

protocol AddNewContact: class {
    func addContact(_ controller: AddToCommunityViewController, with item: Contacts)
}

class AddToCommunityViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var surnameTextField: UITextField!
    @IBOutlet weak var titleTextField: UITextField!
    
    weak var delegate: AddNewContact?
    var newContact: Contacts

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