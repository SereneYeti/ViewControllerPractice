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
    @IBOutlet weak var lblCalc: UILabel!
    
    @IBAction func GetTotalValueStats(_ sender: Any) {
        GetTotalStats();
    }
    @IBAction func GetValueBStats(_ sender: Any) {
        GetValueBStats();
    }
    @IBAction func GetValueAStats(_ sender: Any) {
        GetValueAStats();
    }
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
        GetTotalStats();
    }
    
    func GetTotalStats() -> Void {
        
        var totalArr = [Int]();
        for I in diceHistory {
            totalArr.append(I.total);
        }
        
        //let testArr = [Int](arrayLiteral: 2,6,9,12,12);
        
        let mean = MathCalculations.CalculateMean(set: totalArr);
        let median = MathCalculations.CalculateMedian(set: totalArr)
        let mode = MathCalculations.CalculateMode(set: totalArr);
        
        lblCalc.text = "Total- Mean: " + String(format : "%.2f", mean)  + "\nTotal- Medain: " + String(median) + "\nTotal- Mode: " + String(mode);
    }
    
    func GetValueAStats() -> Void {
        
        var valueA_arr = [Int]();
        for I in diceHistory {
            valueA_arr.append(I.valueA);
        }
        
        //let testArr = [Int](arrayLiteral: 2,6,9,12,12);
        
        let mean = MathCalculations.CalculateMean(set: valueA_arr);
        let median = MathCalculations.CalculateMedian(set: valueA_arr)
        let mode = MathCalculations.CalculateMode(set: valueA_arr);
        
        lblCalc.text = "Value A- Mean: " + String(format : "%.2f", mean)  + "\nValue A- Medain: " + String(median) + "\nValue A- Mode: " + String(mode);
    }
    
    func GetValueBStats() -> Void {
        
        var valueB_arr = [Int]();
        for I in diceHistory {
            valueB_arr.append(I.valueB);
        }
        
        //let testArr = [Int](arrayLiteral: 2,6,9,12,12);
        
        let mean = MathCalculations.CalculateMean(set: valueB_arr);
        let median = MathCalculations.CalculateMedian(set: valueB_arr)
        let mode = MathCalculations.CalculateMode(set: valueB_arr);
        
        lblCalc.text = "Value B- Mean: " + String(format : "%.2f", mean) + "\nValue B- Medain: " + String(median) + "\nValue B- Mode: " + String(mode);
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
