//
//  NoteTableViewCell.swift
//  NotesApp
//
//  Created by Mitchell Budge on 8/15/19.
//  Copyright © 2019 Mitchell Budge. All rights reserved.
//

import UIKit

class NoteTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var studiedButton: UIButton!
    
    
    @IBAction func studiedButtonPressed(_ sender: Any) {
        studiedButton.setTitle("Studied", for: .normal)
    }
    
}
