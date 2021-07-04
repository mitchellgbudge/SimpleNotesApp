//
//  AddNoteViewController.swift
//  NotesApp
//
//  Created by William Chen on 8/15/19.
//  Copyright © 2019 William Chen. All rights reserved.
//

import UIKit

class AddNoteViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UITextField!
    @IBOutlet weak var textFieldLabel: UITextView!
    
    var noteController : NoteController?
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    @IBAction func saveButtonPressed(_ sender: Any) {
        guard let title = titleLabel.text, titleLabel.text != "" else { return }
        guard let body = textFieldLabel.text, textFieldLabel.text != "" else { return }
        let newNote = Note(title: title, body: body)
        noteController?.notes.append(newNote)
        navigationController?.popViewController(animated: true)
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
