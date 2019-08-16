//
//  NoteDetailViewController.swift
//  NotesApp
//
//  Created by Mitchell Budge on 8/15/19.
//  Copyright © 2019 Mitchell Budge. All rights reserved.
//

import UIKit

class NoteDetailViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var bodyTextView: UITextView!
    
    var note: Note?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
    }
  
    func updateViews() {
        guard let note = note else { return }
        titleLabel.text = note.title
        bodyTextView.text = note.body
    }

}
