//
//  TrackerViewController.swift
//  finalproject195
//
//  Created by shellywu on 4/23/21.
//

import UIKit

class TrackerViewController: UITableViewController {
    
    
    
    var tasks = [Task]()
    @IBAction func didSelectAdd(_ sender: UIBarButtonItem) {
        let ac = UIAlertController(title: "add new task", message: nil, preferredStyle: .alert)
        ac.addTextField { (title) in
            title.text = ""
            title.placeholder = "Task"
        }
        ac.addTextField { (month) in
            month.text = ""
            month.placeholder = "Due Month"
        }
        ac.addTextField  { (date) in
            date.text = ""
            date.placeholder = "Due Date"
        }
//        let time = UIAlertController(title: "when is the due date?", message: nil, preferredStyle: .alert)
        //time.addTextField()
        let cancelAction = UIAlertAction(title: "cancel", style: .default, handler: nil)
//        let date = Date()
//        let calendar = Calendar.current
//        let hour = calendar.component(.hour, from: date)
//        let minutes = calendar.component(.minute, from: date)
        let doneAction = UIAlertAction(title: "done", style: .default) {_ in
            let text = ac.textFields![0]
            let month = ac.textFields![1]
            let date = ac.textFields![2]
            let addFirstItem = Task(title: text.text!, done: false, duemonth: month.text!, duedate: date.text!)
            self.tasks.insert(addFirstItem, at: 0)
            self.tableView.reloadData()
            }
        ac.addAction(cancelAction)
        ac.addAction(doneAction)
        present(ac, animated: true)
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count;
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "topBarCell")
        if let text = cell?.viewWithTag(1) as? UILabel{
            text.text = tasks[indexPath.row].title
        }
        
        if let star = cell?.viewWithTag(2) as? UIImageView{
            if tasks[indexPath.row].done{
                star.image = UIImage(named: "download")!
            }
            else{
                star.image = UIImage(named: "rounded-square")!
            }
        }
        if let text = cell?.viewWithTag(3) as? UILabel{
            text.text = String(tasks[indexPath.row].duemonth)
        }
        if let text = cell?.viewWithTag(4) as? UILabel{
            text.text = String(tasks[indexPath.row].duedate)
        }
        return cell ?? UITableViewCell()
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80.0
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        tasks[indexPath.row].done.toggle()
        tableView.reloadData()
        
    }
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
                tasks.remove(at: indexPath.row)
                tableView.deleteRows(at: [indexPath], with: .fade)
        }
        
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
