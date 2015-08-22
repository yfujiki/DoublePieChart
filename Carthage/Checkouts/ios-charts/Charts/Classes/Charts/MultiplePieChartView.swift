//
//  MultiplePieChartView.swift
//  Charts
//
//  Created by Yuichi Fujiki on 8/21/15.
//  Copyright (c) 2015 dcg. All rights reserved.
//

import UIKit

public class MultiplePieChartView: PieChartView {

    /// calculates the needed angle for a given value
    private func calcAngle(value: Double, dataSet: ChartDataSet) -> CGFloat
    {
        return CGFloat(value) / CGFloat(dataSet.yValueSum) * 360.0
    }

    override internal func calcAngles()
    {
        _drawAngles = [CGFloat]()
        _absoluteAngles = [CGFloat]()

        _drawAngles.reserveCapacity(_data.yValCount)
        _absoluteAngles.reserveCapacity(_data.yValCount)

        var dataSets = _data.dataSets

        var cnt = 0

        for (var i = 0; i < _data.dataSetCount; i++)
        {
            var set = dataSets[i]
            var entries = set.yVals

            for (var j = 0; j < entries.count; j++)
            {
                _drawAngles.append(calcAngle(abs(entries[j].value), dataSet: set))

                if (cnt == 0)
                {
                    _absoluteAngles.append(_drawAngles[cnt])
                }
                else
                {
                    _absoluteAngles.append(_absoluteAngles[cnt - 1] + _drawAngles[cnt])
                }

                cnt++
            }
        }
    }

}
