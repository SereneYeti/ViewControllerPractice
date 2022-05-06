//
//  DiceRollHistoryViewController.swift
//  ViewControllerPractice
//
//  Created by IACD-011 on 2022/05/06.
//

import UIKit



class DiceRollHistoryViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    //! -> Refers to non optional
    @IBOutlet weak var DiceTableView: UITableView!
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return diceHistory.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let tableViewCell = tableView.dequeueReusableCell(withIdentifier: "tableViewCellID") as!  TableViewCell
        
        tableViewCell.valueA.text = "Value A: " + String(diceHistory[indexPath.row].valueA);
        tableViewCell.valueB.text = "Value B: " + String(diceHistory[indexPath.row].valueB);
        tableViewCell.total.text = "Total: " + String(diceHistory[indexPath.row].total);
        
        return tableViewCell;
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //print("Value A: " + String(diceHistory[0].valueA) + "\nValue B: " + String(diceHistory[0].valueB) + "\nTotal: " + String(diceHistory[0].total));
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
