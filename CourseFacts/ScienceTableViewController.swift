//
//  ScienceTableViewController.swift
//  CourseFacts
//
//  Created by Hafeez Khan on 2017-07-25.
//  Copyright © 2017 Hafeez Khan. All rights reserved.
//

import UIKit

class ScienceTableViewController: UITableViewController {

    //var keyWordsScience = ["Matter", "Energy", "Human cell", "Plant cell"]
    var keyWordsScience: [Fact]?
    var myIndex = 0
    var data: Fact?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        keyWordsScience = []
        
        let matter = Fact()
        matter.title = "Matter"
        matter.myDescription = "Matter is everywhere"
        
        keyWordsScience?.append(matter)
        
        let energy = Fact ()
        energy.title = "Energy"
        energy.myDescription = "Energy cant be created or destroyed"
        
        keyWordsScience?.append(energy)
        
        let humanCell = Fact ()
        humanCell.title = "Human Cell"
        humanCell.myDescription = "The human cell consists of a nucleus"
        
        keyWordsScience?.append(humanCell)
        
        let plantCell = Fact ()
        plantCell.title = "Plant Cell"
        plantCell.myDescription = "Plant cell has a cell wall "
        
        keyWordsScience?.append(plantCell)
        
        

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return keyWordsScience!.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "postCell", for: indexPath)

        // Configure the cell...
        cell.backgroundColor = UIColor(red:0.62,green:0.77,blue:1.0, alpha:1.5 )
        cell.textLabel?.text = keyWordsScience! [indexPath.row].title
        
        

        return cell
    }

    override func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
        self.data = keyWordsScience![indexPath.row]
        performSegue(withIdentifier: "showInfo", sender: nil)
        return nil
    }
    


    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        // Get the new view controller using segue.destinationViewController.
//        // Pass the selected object to the new view controller.
//        
        if segue.identifier == "showInfo" {
           let destination = segue.destination as? InfoViewController
            destination?.science = data
            
            
        }
    }
//

}
