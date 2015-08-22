//
//  DoublePieViewController.swift
//  DoublePieChart
//
//  Created by Yuichi Fujiki on 8/21/15.
//  Copyright (c) 2015 responsivebytes. All rights reserved.
//

import UIKit
import Charts

class DoublePieViewController: UIViewController {

    @IBOutlet weak var pieChartView: MultiplePieChartView!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewDidAppear(animated: Bool) {
        pieChartView.data = Data.sharedInstance.doubleData
        pieChartView.setNeedsDisplay()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
