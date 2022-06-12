//
//  ViewController.swift
//  ExampleDelegation
//
//  Created by Martin Smith on 11/06/2022.
//

import UIKit

class ViewController: UIViewController, AddNewContact {
    
    @IBOutlet weak var contactsTableView: UITableView!
    
    //Olusturulan her Contact bu arrayde toplanacak
    var allContacts = [Contacts]()
    var namesOfContacts = ["Mark", "Jones", "Jessica"]
    var titlesOfContacts = ["iOS Developer", "Android Developer", "Tester"]
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //Diger VC'daki delegate tetiklenmis oluyor
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toAddPage" {
            let destinationVC = segue.destination as? AddToCommunityViewController
            destinationVC?.delegate = self
        }
    }
    
    func addContact(_ controller: AddToCommunityViewController, with item: Contacts) {
        let newCell = allContacts.count
        allContacts.append(item)
        let indexPath = IndexPath(row: newCell, section: 0)
        let indexPaths = [indexPath]
        contactsTableView.insertRows(at: indexPaths, with: .automatic)
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func addButtonPressed(_ sender: UIBarButtonItem) {
        performSegue(withIdentifier: "toAddPage", sender: nil)
    }
}
    
extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allContacts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "contact") as? ContactsTableViewCell {
            let contact = allContacts[indexPath.row]
            cell.prepareForContacts(for: contact)
        return cell
    }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 72.0
    }


}

