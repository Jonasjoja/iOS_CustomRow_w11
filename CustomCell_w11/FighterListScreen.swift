//
//  FighterListScreen.swift
//  CustomCell_w11
//
//  Created by admin on 15/06/2020.
//  Copyright © 2020 admin. All rights reserved.
//

import UIKit

class FighterListScreen: UIViewController {
    //Connect outlet
    @IBOutlet weak var tableView: UITableView!
    
    //Create array for data
    var fighters : [Fighter] = [] //Empty array of type fighter class
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fighters = createArray() //sets the array to be filled by the func
        
        //sets this viewcontroller to be delegate and datasource
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func createArray() -> [Fighter] { //func is gonna create the fighter object and throw im into temp array
        //then return that temp array, which is to be assigned to the "fighters" var / array
        var tempFighter : [Fighter] = []
        
        //Create fighters
        let fighter1 = Fighter(image: #imageLiteral(resourceName: "mikeT"), name: "Mike Tyson")
        let fighter2 = Fighter(image: #imageLiteral(resourceName: "evander"), name: "Evander Holyfield")
        let fighter3 = Fighter(image: #imageLiteral(resourceName: "anthonyj"), name: "Anthony Joshua")
        
        
        //append to temp array
        tempFighter.append(fighter1)
        tempFighter.append(fighter2)
        tempFighter.append(fighter3)
        //return temp array
        return tempFighter
    }
    


}

//Conform to proper delegates
extension FighterListScreen : UITableViewDataSource, UITableViewDelegate {
    //needs cell for row and number of sections
    
    
    //How many rows should it actually show
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fighters.count // as many as elements in the array.
    }
    
    //Configuring the cells
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let fighter = fighters[indexPath.row] //whatever is at that row
        
        //making sure I get custom cell
        let cell = tableView.dequeueReusableCell(withIdentifier: "FighterCell") as! FighterCellTableViewCell

        //setting it, calling method in the fightercell class
        cell.setFighter(fighter: fighter) // pass in fighter
        
        return cell //return the cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //do something when row selected
        print(indexPath)
    }
}
