//
//  NotesTableViewController.swift
//  NotesApp
//
//  Created by Mitchell Budge on 8/15/19.
//  Copyright © 2019 Mitchell Budge. All rights reserved.
//

import UIKit

class NotesTableViewController: UITableViewController {
    
    let noteController = NoteController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.reloadData()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return noteController.notes.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "NoteCell", for: indexPath) as? NoteTableViewCell else { return UITableViewCell() }
        let note = noteController.notes[indexPath.row]
        cell.titleLabel.text = note.title
        return cell
    }

    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            noteController.notes.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddNoteSegue" {
            let addNoteVC = segue.destination as? AddNoteViewController
            addNoteVC?.noteController = noteController
        } else if segue.identifier == "NoteDetailSegue" {
            guard let indexPath = tableView.indexPathForSelectedRow else { return }
            let noteDetailVC = segue.destination as? NoteDetailViewController
            noteDetailVC?.note = noteController.notes[indexPath.row]
        }
    }

}
