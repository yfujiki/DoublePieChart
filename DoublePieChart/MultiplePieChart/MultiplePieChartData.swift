//
//  MultiplePieChartData.swift
//  DoublePieChart
//
//  Created by Yuichi Fujiki on 8/21/15.
//  Copyright (c) 2015 responsivebytes. All rights reserved.
//

import UIKit
import Charts

class MultiplePieChartData: PieChartData {
    override func getDataSetByIndex(index: Int) -> ChartDataSet? {
        if index < 0 || index >= dataSets.count {
            return nil
        }

        return dataSets[index]
    }

    override func getDataSetByLabel(label: String, ignorecase: Bool) -> ChartDataSet? {
        var index = getDataSetIndexByLabel(label, ignorecase: true)

        if index < 0 || index >= dataSets.count {
            return nil
        } else {
            return dataSets[index]
        }
    }

    private func getDataSetIndexByLabel(label: String, ignorecase: Bool) -> Int
    {
        if (ignorecase)
        {
            for (var i = 0; i < dataSets.count; i++)
            {
                if (dataSets[i].label == nil)
                {
                    continue
                }
                if (label.caseInsensitiveCompare(dataSets[i].label!) == NSComparisonResult.OrderedSame)
                {
                    return i
                }
            }
        }
        else
        {
            for (var i = 0; i < dataSets.count; i++)
            {
                if (label == dataSets[i].label)
                {
                    return i
                }
            }
        }

        return -1
    }
}
