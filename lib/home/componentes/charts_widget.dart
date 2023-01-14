import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ChartsWidget extends StatefulWidget {

  final Map<int,double> quotesOpening;

  final double maxValue;

  final double minValue;

  const ChartsWidget({super.key, required this.quotesOpening, required this.maxValue, required this.minValue});

  @override
  State<ChartsWidget> createState() => _LineChartSample2State();
}

class _LineChartSample2State extends State<ChartsWidget> {

  List<Color> gradientColors = [const Color(0xff23b6e6), const Color(0xff02d39a)];

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.70,
      child: DecoratedBox(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(18)), color: Color(0xff232d37)),
        child: Padding(
          padding: const EdgeInsets.only(
            right: 18, left: 12,
            top: 24, bottom: 12),
          child: LineChart(avgData()))));
  }

  Widget bottomTitleWidgets(double value, TitleMeta meta) {

    const style = TextStyle(color: Color(0xff68737d), fontWeight: FontWeight.bold, fontSize: 5);

    Widget text;

    switch (value.toInt()) {

      default:
        text = Text(meta.formattedValue, style: style);
        break;
    }

    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: text,
    );
  }

  Widget leftTitleWidgets(double value, TitleMeta meta) {

    const style = TextStyle(color: Color(0xff68737d), fontWeight: FontWeight.bold, fontSize: 5);

    Widget text;

    switch (value.toInt()) {

      default:
        text = Text(meta.formattedValue, style: style);
        break;
    }

    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: text,
    );
  }

  LineChartData avgData() {
    return LineChartData(
      lineTouchData: LineTouchData(enabled: true),
      gridData: FlGridData(
        show: true,
        drawHorizontalLine: true,
        verticalInterval: 2,
        horizontalInterval: 1,
        getDrawingVerticalLine: (value) {
          return FlLine(
            color: const Color(0xff37434d),
            strokeWidth: 1,
          );
        },
        getDrawingHorizontalLine: (value) {
          return FlLine(
            color: const Color(0xff37434d),
            strokeWidth: 1,
          );
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 30,
            getTitlesWidget: bottomTitleWidgets,
            interval: 1,
          ),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 42,
            interval: 1,
            getTitlesWidget: leftTitleWidgets
          ),
        ),
        topTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        rightTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
      ),
      borderData: FlBorderData(
        show: true,
        border: Border.all(color: const Color(0xff37434d)),
      ),
      minX: widget.quotesOpening.entries.first.key.toDouble(),
      maxX: widget.quotesOpening.entries.last.key.toDouble(),
      minY: widget.minValue - 1,
      maxY: widget.maxValue + 1 ,
      lineBarsData: [
        LineChartBarData(
          spots: widget.quotesOpening.entries.map((e) => FlSpot(e.key.toDouble(), e.value)).toList(),
          isCurved: false,
          gradient: LinearGradient(
            colors: [
              ColorTween(begin: gradientColors[0], end: gradientColors[1]).lerp(0.2)!,
              ColorTween(begin: gradientColors[0], end: gradientColors[1]).lerp(0.2)!,
            ],
          ),
          barWidth: 1,
          isStrokeCapRound: false,
          dotData: FlDotData(show: true),
          belowBarData: BarAreaData(
            show: true,
            gradient: LinearGradient(
              colors: [
                ColorTween(begin: gradientColors[0], end: gradientColors[1]).lerp(0.2)!.withOpacity(0.1),
                ColorTween(begin: gradientColors[0], end: gradientColors[1]).lerp(0.2)!.withOpacity(0.1),
              ],
            ),
          ),
        ),
      ],
    );
  }
}