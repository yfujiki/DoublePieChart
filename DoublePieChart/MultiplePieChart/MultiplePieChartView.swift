//
//  MultiplePieChartView.swift
//  DoublePieChart
//
//  Created by Yuichi Fujiki on 8/21/15.
//  Copyright (c) 2015 responsivebytes. All rights reserved.
//

import UIKit
import Charts

class MultiplePieChartView: PieChartView {
    /// array that holds the width of each pie-slice in degrees
    private var _drawAngles = [CGFloat]()

    /// calculates the needed angles for the chart slices
    private func calcAngles()
    {
//        _drawAngles = [CGFloat]()
//        _absoluteAngles = [CGFloat]()
//
//        _drawAngles.reserveCapacity(_data.yValCount)
//        _absoluteAngles.reserveCapacity(_data.yValCount)
//
//        var dataSets = _data.dataSets
//
//        var cnt = 0
//
//        for (var i = 0; i < _data.dataSetCount; i++)
//        {
//            var set = dataSets[i]
//            var entries = set.yVals
//
//            for (var j = 0; j < entries.count; j++)
//            {
//                _drawAngles.append(calcAngle(abs(entries[j].value)))
//
//                if (cnt == 0)
//                {
//                    _absoluteAngles.append(_drawAngles[cnt])
//                }
//                else
//                {
//                    _absoluteAngles.append(_absoluteAngles[cnt - 1] + _drawAngles[cnt])
//                }
//
//                cnt++
//            }
//        }
    }

}
