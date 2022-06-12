//
//  ViewController.swift
//  ExampleDelegation
//
//  Created by Martin Smith on 11/06/2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var namesOfContacts = ["Mark", "Jones", "Jessica"]
    var titlesOfContacts = ["iOS Developer", "Android Developer", "Tester"]
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }


}

