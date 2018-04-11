//
//  PieChartViewController.swift
//  ProjectBaocao
//
//  Created by HanhvanTran on 3/19/18.
//  Copyright © 2018 HanhvanTran. All rights reserved.
//

import UIKit
import Charts
class PieChartViewController: UIViewController {
    
    @IBOutlet weak var viewChart: PieChartView!
    var _arrThang:Array<String>=[]
    var _arrSoLuong:Array<Double>=[]
    override func viewDidLoad() {
        super.viewDidLoad()
        _arrThang=["Binh Phuoc", "Binh Thuan", "Lam Dong", "Binh Duong", "Tay Ninh", "Long An ", "Dong Thap", "Tien Giang", "Ben Tre", "Vinh Long", "Can Tho", "An Giang" ]
        _arrSoLuong=[12.5, 22.5, 20.5, 30.5, 32.5, 34.5, 35.5, 37.5, 39.5, 40.0, 40.5, 50.0 ]
        viewChart.noDataText="Loading...."
        setLineChart(name: _arrThang, value: _arrSoLuong)
        // Do any additional setup after loading the view.
    }
    func setLineChart(name:Array<String>, value: Array<Double>)
    {
        var dataArray:[ChartDataEntry]=[]
        for i in 0..<name.count{ let data: ChartDataEntry = ChartDataEntry(x: Double(i), y:value[i])
            dataArray.append(data)
        }
        let dataset: PieChartDataSet = PieChartDataSet(values:dataArray, label:"So Luong")
        
        let dataChart:PieChartData = PieChartData(dataSet: dataset)
        let _color:[UIColor]=[UIColor.black, UIColor.green, UIColor.red, UIColor.blue, UIColor.orange, UIColor.yellow, UIColor.purple, UIColor.brown, UIColor.gray, .groupTableViewBackground, UIColor.cyan, UIColor.magenta]
        dataset.colors=_color
        viewChart.data=dataChart
        viewChart.animate(xAxisDuration: 2, easingOption: .easeInBounce)
        viewChart.animate(xAxisDuration: 2, easingOption: .easeInBounce)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
