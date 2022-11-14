import 'dart:ffi';

import 'package:finance_app/utils/main_colors.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ChartWidget extends StatelessWidget {
  Color color_;
  List<double> xpoints;
  List<double> ypoints;
   ChartWidget({super.key , required this.xpoints , required this.ypoints , required this.color_});

  @override
  Widget build(BuildContext context) {
    return LineChart(

      LineChartData(
        minX: 0,
        maxX: 11,
        minY: 0,
        maxY: 6,
        gridData: FlGridData(
          show: false,
        ),
        titlesData: FlTitlesData(show: false),
        borderData: FlBorderData(show: false),
        
        lineBarsData: [
          
          LineChartBarData(
            spots:  [
              FlSpot(xpoints[0], ypoints[0]),
              FlSpot(xpoints[1], ypoints[1]),
              FlSpot(xpoints[2], ypoints[2]),
              FlSpot(xpoints[3], ypoints[3]),
              FlSpot(xpoints[4], ypoints[4]),
              FlSpot(xpoints[5], ypoints[5]),
              FlSpot(xpoints[6], ypoints[6]),
              FlSpot(xpoints[7], ypoints[7]),
              FlSpot(xpoints[8], ypoints[8]),
              FlSpot(xpoints[9], ypoints[9]),
          
              // FlSpot(1, 4.5),
              // FlSpot(2, 4.2),
              // FlSpot(3, 2.8),
              // FlSpot(4, 3.5),
              // FlSpot(6, 2),
              // FlSpot(7, 1),
              // FlSpot(8.5, 2.7),
              // FlSpot(9, 2),
              // FlSpot(11, 3.2),
              // FlSpot(0, 3),
            ],
          
            color: color_,
            barWidth: 3,
            dotData: FlDotData(show: false),
            

          ),
          
        ]
      )
    );
  }
}