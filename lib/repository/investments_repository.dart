



import 'dart:convert';

import 'package:guide/models/chart_model.dart';
import 'package:http/http.dart';

class InvestmentsRepository {


  final String interval = "1d";


  //necessario passar o periodo de inicio e o fim para buscar o ultimo mes
  //Foi inserido o dado de intervalo de 1d, assim podemos observar a variação diaria, normalmente a variação de um ativo acontece em minutos, ou em segundos.

  Future<ChartModel?> getCharts ({required int period1,required int period2,required String symbol}) async {

    final Uri url = Uri.parse("https://query2.finance.yahoo.com/v8/finance/chart/$symbol?period1=$period1&period2=$period2&interval=$interval");

    Response response = await get(url);

    if(response.statusCode == 200) {
      return ChartModel.fromJson(response.body);
    }

    return null;

  }


}