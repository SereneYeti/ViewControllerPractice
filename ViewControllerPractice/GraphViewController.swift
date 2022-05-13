//
//  GraphViewController.swift
//  ViewControllerPractice
//
//  Created by IACD-011 on 2022/05/13.
//

import UIKit
import Charts

class GraphViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        createChart()
    }
    
    private func createChart(){

        let barChart = BarChartView(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height:        view.frame.size.width));
        barChart.frame = CGRect(x: 0, y: 0, width: view.frame.size.width, height:view.frame.size.width);
        barChart.center = view.center;
        var entries = [BarChartDataEntry]();
        
        for x in 0 ... diceHistory.count-1 {
            entries.append(BarChartDataEntry(x: Double(1 + x), y: Double(diceHistory[x].total)));
        }
        
        let set = BarChartDataSet(entries: entries, label: "Total Dice Rolls")
        set.colors = ChartColorTemplates.material();
        let data = BarChartData(dataSet: set)

        barChart.data = data
        
        view.addSubview(barChart)

        barChart.center = view.center
    }
}
