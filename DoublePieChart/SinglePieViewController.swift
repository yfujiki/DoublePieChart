//
//  SinglePieViewController.swift
//  DoublePieChart
//
//  Created by Yuichi Fujiki on 8/20/15.
//  Copyright (c) 2015 responsivebytes. All rights reserved.
//

import UIKit
import Charts

class SinglePieViewController: UIViewController {

    @IBOutlet weak var chartView: PieChartView!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewDidAppear(animated: Bool) {
        chartView.data = Data.sharedInstance.data
        chartView.setNeedsDisplay()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

