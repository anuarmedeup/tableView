//
//  tableTableViewController.swift
//  tableview
//
//  Created by Khadisha Bekkozhina on 20.07.2024.
//

import UIKit

class tableTableViewController: UITableViewController {
    
    //var arrayNames = ["Zinedine", "Pavel", "Andrey", "Gianluigi"]
    //var arraySurname = ["Zidane", "Nedved", "Arshavin", "Buffon"]
    //var arrayImage = ["zidane", "nedved", "arshavin", "buffon"]
    
    var arrayPersons = [Person(name: "Zinedine", surname: "Zidane", imagename: "zidane", description:
                               "popularly known as Zizou, is a French professional football manager and former player who played as an attacking midfielder. He most recently coached Spanish club Real Madrid and is one of the most successful coaches in the world. Widely regarded as one of the greatest players of all time, Zidane was a playmaker renowned for his elegance, vision, passing, ball control, and technique. He received many individual accolades as a player, including being named FIFA World Player of the Year in 1998, 2000 and 2003, and winning the 1998 Ballon d'Or."),
                        
                        Person(name: "Pavel", surname: "Nedved", imagename: "nedved", description:
                              "is a Czech former professional footballer who played as a midfielder. He is widely considered as one of the greatest Czech players of all time,[3] winning domestic and European accolades with Italian clubs Lazio, including the last Cup Winners' Cup, and Juventus, whom he led to the 2003 UEFA Champions League final."),
                        
                        Person(name: "Andrey", surname: "Arshavin", imagename: "arshavin", description:
                                "is a Russian former professional footballer who played as a winger or midfielder. Since 2019, Arshavin has held administrative posts at Zenit. In 2022 he became Deputy General Director for Sports Development, and became a member of the club's executive board in 2023"),
                        Person(name: "Gianluigi", surname: "Buffon", imagename: "buffon", description:
                              "is an Italian former professional footballer who played as a goalkeeper. Widely regarded as one of the greatest goalkeepers of all time, he is one of the few recorded players to have made over 1,100 professional career appearances and holds the record for the most appearances in Serie A.")]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    @IBAction func addPerson(_ sender: Any) {
        //arrayNames.append("new name")
        //arraySurname.append("new surname")
        //arrayImage.append("avatar")
        
        arrayPersons.append(Person(name: "new name", surname: "new surname", imagename: "avatar"))
        
        tableView.reloadData()
        
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arrayPersons.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        // Configure the cell...
        let label = cell.viewWithTag(1000) as! UILabel
        label.text = arrayPersons[indexPath.row].name
        
        let labelSurname = cell.viewWithTag(1001) as! UILabel
        labelSurname.text = arrayPersons[indexPath.row].surname
        
        let imageview = cell.viewWithTag(1002) as! UIImageView
        imageview.image = UIImage(named: arrayPersons[indexPath.row].imagename)

        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 89
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailVc = storyboard?.instantiateViewController(identifier: "detailViewController") as! ViewController
        
        //detailVc.name = arrayPersons[indexPath.row].name
        //detailVc.surname = arrayPersons[indexPath.row].surname
        //detailVc.imagename = arrayPersons[indexPath.row].imagename
        
        detailVc.person = arrayPersons[indexPath.row]

        navigationController?.show(detailVc, sender: self)
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            
            //arrayNames.remove(at: indexPath.row)
            //arraySurname.remove(at: indexPath.row)
            //arrayImage.remove(at: indexPath.row)
            
            arrayPersons.remove(at: indexPath.row)
            
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    

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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
