
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:guide/home/componentes/company_buttons_widget.dart';
import 'package:guide/home/home_store.dart';

import 'componentes/charts_widget.dart';



class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();

}

class _HomePageState extends State<HomePage> {

  HomeStore store = Modular.get();

  final String title = "Guide Test - Graphs";

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
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                          mainAxisSize: MainAxisSize.min,
                          children: tickets.map((e) => CompanyButtonsWidget(
                              title: e,function: () => store.getCharts(symbol: e),
                          )).toList()),
                      const SizedBox(height: 25),

                      Text(titleGraph1,style: const TextStyle(fontSize: 20,fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w300,color: Color(0xFF404040))),

                      const SizedBox(height: 25),

                      SizedBox(
                          width: 300,
                          height: 200,
                          child: ChartsWidget(quotesOpening: store.objectGraph,maxValue: store.maxValueObjectGraph,minValue: store.minValueObjectGraph)),
                      const SizedBox(height: 25),

                      Text(titleGraph2,style: const TextStyle(fontSize: 20,fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w300,color: Color(0xFF404040))),
                      const SizedBox(height: 25),

                      SizedBox(
                          width: 300,
                          height: 200,
                          child: ChartsWidget(quotesOpening: store.objectGraph2, maxValue: store.maxValueObjectGraph2,minValue: store.minValueObjectGraph2))
                    ]),
              ),
            ),
          ),
        );});
  }
}
