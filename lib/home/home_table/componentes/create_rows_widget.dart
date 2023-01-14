






import 'package:flutter/material.dart';
import 'package:guide/home/viewmodels/calculate_viewmodel.dart';
import 'package:guide/utils/time_utils.dart';
import 'package:guide/utils/value_utils.dart';

class CreateRowsWidget {


  final TextStyle style = const TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 8);

  List<TableRow> createTable (List<DateTime> dates, List<double> quotesOpening,Map<int,double> objectGraph,
      Map<int,double> objectGraph2 ) {

    List<TableRow> rows = <TableRow>[];

    rows.add(TableRow(children: [
      Center(child: Text("Dia",style: style)),
      Center(child: Text("Data",style: style)),
      Center(child: Text("Valor",style: style)),
      Center(child: Text("relaçao a D-1",textAlign: TextAlign.center,style: style)),
      Center(child: Text("relaçao a data 1",textAlign: TextAlign.center, style: style)),
    ]));

    for(int i = 0; i < dates.length ; i++) {
      TableRow row = TableRow(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(child: Text(dates[i].day.toString(),style: style)),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(child: Text(TimeUtils.convertDateTimeToString(dates[i]),style: style)),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(child: Text("R\$ ${ValueUtils.convert2DigitsDouble(quotesOpening[i])}",style: style)),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(child: Text(objectGraph.keys.toList().contains(dates[i].day) ? objectGraph[dates[i].day].toString() : "-",textAlign: TextAlign.center, style: style)),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(child: Text(objectGraph2.keys.toList().contains(dates[i].day) ? objectGraph2[dates[i].day].toString() : "-",textAlign: TextAlign.center, style: style)),
        )
      ]);

      rows.add(row);
    }

    return rows;
  }




}