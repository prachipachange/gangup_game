import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

class VerticalBarLabelChart extends StatelessWidget {
  final List<charts.Series<dynamic, String>> seriesList;
  final bool animate;

  const VerticalBarLabelChart(this.seriesList, {required this.animate});

  /// Creates a [BarChart] with sample data and no transition.
  factory VerticalBarLabelChart.withSampleData() {
    return VerticalBarLabelChart(
      createSampleData(),
      // Disable animations for image tests.
      animate: false,
    );
  }
  @override
  Widget build(BuildContext context) {
    return new charts.BarChart(
      seriesList,
      animate: animate,
      // Set a bar label decorator.
      // Example configuring different styles for inside/outside:
      //       barRendererDecorator: new charts.BarLabelDecorator(
      //          insideLabelStyleSpec: new charts.TextStyleSpec(...),
      //          outsideLabelStyleSpec: new charts.TextStyleSpec(...)),
      barRendererDecorator: new charts.BarLabelDecorator<String>(),
      domainAxis: new charts.OrdinalAxisSpec(),
    );
  }

  /// Create one series with sample hard coded data.
  static List<charts.Series<OrdinalSales, String>> createSampleData() {
    final data = [
      OrdinalSales(
        score: '1/08',
        sales: 5,
        barColor: charts.ColorUtil.fromDartColor(const Color(0xff0337ad)),
      ),
      OrdinalSales(
        score: '2/08',
        sales: 7,
        barColor: charts.ColorUtil.fromDartColor(const Color(0xffFFC700)),
      ),
      OrdinalSales(
        score: '3/08',
        sales: 4,
        barColor: charts.ColorUtil.fromDartColor(const Color(0xff0337ad)),
      ),
      OrdinalSales(
        score: '4/08',
        sales: 10,
        barColor: charts.ColorUtil.fromDartColor(const Color(0xffFFC700)),
      ),
      OrdinalSales(
        score: '5/08',
        sales: 8,
        barColor: charts.ColorUtil.fromDartColor(Color(0xff0337ad)),
      ),
    ];

    return [
      new charts.Series<OrdinalSales, String>(
          id: 'Sales',
          domainFn: (OrdinalSales sales, _) => sales.score,
          measureFn: (OrdinalSales sales, _) => sales.sales,
          colorFn: (OrdinalSales series, _) => series.barColor,
          data: data,
          // Set a label accessor to control the text of the bar label.
          labelAccessorFn: (OrdinalSales sales, _) =>
              '\$${sales.sales.toString()}')
    ];
  }
}

/// Sample ordinal data type.
class OrdinalSales {
  final String score;
  final int sales;
  final charts.Color barColor;

  OrdinalSales(
      {required this.score, required this.sales, required this.barColor});
}
