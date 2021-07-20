//
//  AddToDoViewController.swift
//  TodoList
//
//  Created by Eve T on 2021-07-20.
//

import UIKit

class AddToDoViewController: UIViewController {
    var previousVC = ToDoListTableViewController()
    
    @IBOutlet weak var titletextField: UITextField!
    @IBOutlet weak var importantSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func addTapped(_ sender: Any) {
        let toDo = ToDo()
        
        //need to do unwrapping b/c in swift in to verify that user typed something there so no null value
        if let titleText = titletextField.text{
            //is there text in there? so can take something out
            toDo.name = titleText
            toDo.important = importantSwitch.isOn
        }
       
        //update ToDos array with new object
        previousVC.toDos.append(toDo)
        previousVC.tableView.reloadData()
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
