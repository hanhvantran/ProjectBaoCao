//
//  LineChartViewController.swift
//  ProjectBaocao
//
//  Created by Le Tan Tien on 3/19/18.
//  Copyright © 2018 HanhvanTran. All rights reserved.
//

import UIKit
import Charts
class LineChartViewController: UIViewController {

    @IBOutlet weak var viewChart: LineChartView!
    var _arrThang:Array<String>=[]
    var _arrSoLuong:Array<Double>=[]
    override func viewDidLoad() {
        super.viewDidLoad()
        _arrThang=["Thang 1", "Thang 2", "Thang 3", "Thang 4", "Thang 5", "Thang 6", "Thang 7", "Thang 8", "Thang 9", "Thang 10", "Thang 11", "Thang 12" ]
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
        let dataset: LineChartDataSet = LineChartDataSet(values:dataArray, label:"So Luong")
        
        let dataChart:LineChartData = LineChartData(dataSet: dataset)
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
