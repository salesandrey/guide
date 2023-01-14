
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:guide/home/componentes/company_buttons_widget.dart';
import 'package:guide/home/home_store.dart';

import 'componentes/create_rows_widget.dart';


class HomeTablePage extends StatefulWidget {
  const HomeTablePage({Key? key}) : super(key: key);

  @override
  State<HomeTablePage> createState() => _HomeTablePageState();
}

class _HomeTablePageState extends State<HomeTablePage> {

  HomeStore store = Modular.get();

  final String title = "Guide Test - Table";

  final String titleGraph1 = "Variação em relação a D-1";

  final String titleGraph2 = "Variação em relação a primeira data";

  List<String> tickets = ["aapl", "PETR4.SA", "nflx", "goog"];

  @override
  void initState() {
    store.getCharts(symbol: tickets[0]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (BuildContext context) {

      if(store.loading || store.objectGraph.isEmpty) {
        return  const Scaffold(body: Center(child: CircularProgressIndicator()));
      }

      return Scaffold(
          appBar: AppBar(title: Text(title,style: const TextStyle(fontSize: 20,fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w300,color: Colors.white))),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 25,horizontal: 16),
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                    mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                          mainAxisSize: MainAxisSize.min,
                          children: tickets.map((e) => CompanyButtonsWidget(title: e,function: () => store.getCharts(symbol: e))).toList()),
                      const SizedBox(height: 25),
                      Table(
                        border: TableBorder.all(),
                        children: CreateRowsWidget().createTable(store.dates,
                            store.quotesOpening, store.objectGraph, store.objectGraph2)
                      )
      ]),
              ),
            ))));});
  }
}
