//
//  ContactsTableViewCell.swift
//  ExampleDelegation
//
//  Created by Martin Smith on 12/06/2022.
//

import UIKit

class ContactsTableViewCell: UITableViewCell {

    
    @IBOutlet weak var fullNamesLabel: UILabel!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func prepareForContacts (for object: Contacts) {
        fullNamesLabel.text = object.fullName()
        titleLabel.text = object.title
    }
}
