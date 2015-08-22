//
//  Data.swift
//  DoublePieChart
//
//  Created by Yuichi Fujiki on 8/21/15.
//  Copyright (c) 2015 responsivebytes. All rights reserved.
//

import Foundation
import Charts

class Data {
    static var sharedInstance = Data()

    private let xVals: [String] = ["party1", "party2", "party3", "party4", "party5"]
    private let colors: [UIColor] = [UIColor.redColor(), UIColor.greenColor(), UIColor.blueColor(), UIColor.orangeColor(), UIColor.yellowColor()]

    internal var data: PieChartData {
        var yVals = generateYVals()
        let dataSet = PieChartDataSet(yVals: yVals, label: "Election Results")
        dataSet.colors = colors

        return PieChartData(xVals: xVals, dataSet: dataSet)
    }

    internal var doubleData: PieChartData {
        var yVals = generateYVals()
        let dataSet = PieChartDataSet(yVals: yVals, label: "Election Results")
        dataSet.colors = colors

        let dataSet2 = PieChartDataSet(yVals: yVals, label: "Election Results2")
        dataSet2.colors = colors

        let data = MultiplePieChartData(xVals: xVals, dataSets: [dataSet, dataSet2])

        return data
    }

    internal func generateYVals() -> [BarChartDataEntry] {
        var yVals = [BarChartDataEntry]()

        for i in 0..<xVals.count {
            let dataEntry = BarChartDataEntry(value: Double(arc4random_uniform(10)), xIndex: i)
            yVals.append(dataEntry)
        }

        return yVals
    }

//        - (void)setDataCount:(int)count range:(double)range
//    {
//    double mult = range;
//
//    NSMutableArray *yVals1 = [[NSMutableArray alloc] init];
//
//    // IMPORTANT: In a PieChart, no values (Entry) should have the same xIndex (even if from different DataSets), since no values can be drawn above each other.
//    for (int i = 0; i < count; i++)
//    {
//    [yVals1 addObject:[[BarChartDataEntry alloc] initWithValue:(arc4random_uniform(mult) + mult / 5) xIndex:i]];
//    }
//
//    NSMutableArray *xVals = [[NSMutableArray alloc] init];
//
//    for (int i = 0; i < count; i++)
//    {
//    [xVals addObject:parties[i % parties.count]];
//    }
//
//    PieChartDataSet *dataSet = [[PieChartDataSet alloc] initWithYVals:yVals1 label:@"Election Results"];
//    dataSet.sliceSpace = 3.0;
//
//    // add a lot of colors
//
//    NSMutableArray *colors = [[NSMutableArray alloc] init];
//    [colors addObjectsFromArray:ChartColorTemplates.vordiplom];
//    [colors addObjectsFromArray:ChartColorTemplates.joyful];
//    [colors addObjectsFromArray:ChartColorTemplates.colorful];
//    [colors addObjectsFromArray:ChartColorTemplates.liberty];
//    [colors addObjectsFromArray:ChartColorTemplates.pastel];
//    [colors addObject:[UIColor colorWithRed:51/255.f green:181/255.f blue:229/255.f alpha:1.f]];
//
//    dataSet.colors = colors;
//
//    PieChartData *data = [[PieChartData alloc] initWithXVals:xVals dataSet:dataSet];
//
//    NSNumberFormatter *pFormatter = [[NSNumberFormatter alloc] init];
//    pFormatter.numberStyle = NSNumberFormatterPercentStyle;
//    pFormatter.maximumFractionDigits = 1;
//    pFormatter.multiplier = @1.f;
//    pFormatter.percentSymbol = @" %";
//    [data setValueFormatter:pFormatter];
//    [data setValueFont:[UIFont fontWithName:@"HelveticaNeue-Light" size:11.f]];
//    [data setValueTextColor:UIColor.whiteColor];
//
//    _chartView.data = data;
//    [_chartView highlightValues:nil];
//    }

}
