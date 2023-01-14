// To parse this JSON data, do
//
//     final chartModel = chartModelFromMap(jsonString);

import 'dart:convert';

class ChartModel {
  ChartModel({
    this.chart,
  });

  final Chart? chart;

  factory ChartModel.fromJson(String str) => ChartModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ChartModel.fromMap(Map<String, dynamic> json) => ChartModel(
    chart: Chart.fromMap(json["chart"]),
  );

  Map<String, dynamic> toMap() => {
    "chart": chart!.toMap(),
  };
}

class Chart {
  Chart({
    this.result,
    this.error,
  });

  final List<Result?>? result;
  final dynamic error;

  factory Chart.fromJson(String str) => Chart.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Chart.fromMap(Map<String, dynamic> json) => Chart(
    result: json["result"] == null ? [] : List<Result?>.from(json["result"]!.map((x) => Result.fromMap(x))),
    error: json["error"],
  );

  Map<String, dynamic> toMap() => {
    "result": result == null ? [] : List<dynamic>.from(result!.map((x) => x!.toMap())),
    "error": error,
  };
}

class Result {
  Result({
    this.meta,
    this.timestamp,
    this.indicators,
  });

  final Meta? meta;
  final List<int?>? timestamp;
  final Indicators? indicators;

  factory Result.fromJson(String str) => Result.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Result.fromMap(Map<String, dynamic> json) => Result(
    meta: Meta.fromMap(json["meta"]),
    timestamp: json["timestamp"] == null ? [] : List<int?>.from(json["timestamp"]!.map((x) => x)),
    indicators: Indicators.fromMap(json["indicators"]),
  );

  Map<String, dynamic> toMap() => {
    "meta": meta!.toMap(),
    "timestamp": timestamp == null ? [] : List<dynamic>.from(timestamp!.map((x) => x)),
    "indicators": indicators!.toMap(),
  };
}

class Indicators {
  Indicators({
    this.quote,
    this.adjclose,
  });

  final List<Quote?>? quote;
  final List<Adjclose?>? adjclose;

  factory Indicators.fromJson(String str) => Indicators.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Indicators.fromMap(Map<String, dynamic> json) => Indicators(
    quote: json["quote"] == null ? [] : List<Quote?>.from(json["quote"]!.map((x) => Quote.fromMap(x))),
    adjclose: json["adjclose"] == null ? [] : List<Adjclose?>.from(json["adjclose"]!.map((x) => Adjclose.fromMap(x))),
  );

  Map<String, dynamic> toMap() => {
    "quote": quote == null ? [] : List<dynamic>.from(quote!.map((x) => x!.toMap())),
    "adjclose": adjclose == null ? [] : List<dynamic>.from(adjclose!.map((x) => x!.toMap())),
  };
}

class Adjclose {
  Adjclose({
    this.adjclose,
  });

  final List<double?>? adjclose;

  factory Adjclose.fromJson(String str) => Adjclose.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Adjclose.fromMap(Map<String, dynamic> json) => Adjclose(
    adjclose: json["adjclose"] == null ? [] : List<double?>.from(json["adjclose"]!.map((x) => x.toDouble())),
  );

  Map<String, dynamic> toMap() => {
    "adjclose": adjclose == null ? [] : List<dynamic>.from(adjclose!.map((x) => x)),
  };
}

class Quote {
  Quote({
    this.volume,
    this.high,
    this.low,
    this.open,
    this.close,
  });

  final List<int?>? volume;
  final List<double?>? high;
  final List<double?>? low;
  final List<double?>? open;
  final List<double?>? close;

  factory Quote.fromJson(String str) => Quote.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Quote.fromMap(Map<String, dynamic> json) => Quote(
    volume: json["volume"] == null ? [] : List<int?>.from(json["volume"]!.map((x) => x)),
    high: json["high"] == null ? [] : List<double?>.from(json["high"]!.map((x) => x.toDouble())),
    low: json["low"] == null ? [] : List<double?>.from(json["low"]!.map((x) => x.toDouble())),
    open: json["open"] == null ? [] : List<double?>.from(json["open"]!.map((x) => x.toDouble())),
    close: json["close"] == null ? [] : List<double?>.from(json["close"]!.map((x) => x.toDouble())),
  );

  Map<String, dynamic> toMap() => {
    "volume": volume == null ? [] : List<dynamic>.from(volume!.map((x) => x)),
    "high": high == null ? [] : List<dynamic>.from(high!.map((x) => x)),
    "low": low == null ? [] : List<dynamic>.from(low!.map((x) => x)),
    "open": open == null ? [] : List<dynamic>.from(open!.map((x) => x)),
    "close": close == null ? [] : List<dynamic>.from(close!.map((x) => x)),
  };
}

class Meta {
  Meta({
    this.currency,
    this.symbol,
    this.exchangeName,
    this.instrumentType,
    this.firstTradeDate,
    this.regularMarketTime,
    this.gmtoffset,
    this.timezone,
    this.exchangeTimezoneName,
    this.regularMarketPrice,
    this.chartPreviousClose,
    this.priceHint,
    this.currentTradingPeriod,
    this.dataGranularity,
    this.range,
    this.validRanges,
  });

  final String? currency;
  final String? symbol;
  final String? exchangeName;
  final String? instrumentType;
  final int? firstTradeDate;
  final int? regularMarketTime;
  final int? gmtoffset;
  final String? timezone;
  final String? exchangeTimezoneName;
  final double? regularMarketPrice;
  final double? chartPreviousClose;
  final int? priceHint;
  final CurrentTradingPeriod? currentTradingPeriod;
  final String? dataGranularity;
  final String? range;
  final List<String?>? validRanges;

  factory Meta.fromJson(String str) => Meta.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Meta.fromMap(Map<String, dynamic> json) => Meta(
    currency: json["currency"],
    symbol: json["symbol"],
    exchangeName: json["exchangeName"],
    instrumentType: json["instrumentType"],
    firstTradeDate: json["firstTradeDate"],
    regularMarketTime: json["regularMarketTime"],
    gmtoffset: json["gmtoffset"],
    timezone: json["timezone"],
    exchangeTimezoneName: json["exchangeTimezoneName"],
    regularMarketPrice: json["regularMarketPrice"].toDouble(),
    chartPreviousClose: json["chartPreviousClose"].toDouble(),
    priceHint: json["priceHint"],
    currentTradingPeriod: CurrentTradingPeriod.fromMap(json["currentTradingPeriod"]),
    dataGranularity: json["dataGranularity"],
    range: json["range"],
    validRanges: json["validRanges"] == null ? [] : List<String?>.from(json["validRanges"]!.map((x) => x)),
  );

  Map<String, dynamic> toMap() => {
    "currency": currency,
    "symbol": symbol,
    "exchangeName": exchangeName,
    "instrumentType": instrumentType,
    "firstTradeDate": firstTradeDate,
    "regularMarketTime": regularMarketTime,
    "gmtoffset": gmtoffset,
    "timezone": timezone,
    "exchangeTimezoneName": exchangeTimezoneName,
    "regularMarketPrice": regularMarketPrice,
    "chartPreviousClose": chartPreviousClose,
    "priceHint": priceHint,
    "currentTradingPeriod": currentTradingPeriod!.toMap(),
    "dataGranularity": dataGranularity,
    "range": range,
    "validRanges": validRanges == null ? [] : List<dynamic>.from(validRanges!.map((x) => x)),
  };
}

class CurrentTradingPeriod {
  CurrentTradingPeriod({
    this.pre,
    this.regular,
    this.post,
  });

  final Post? pre;
  final Post? regular;
  final Post? post;

  factory CurrentTradingPeriod.fromJson(String str) => CurrentTradingPeriod.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory CurrentTradingPeriod.fromMap(Map<String, dynamic> json) => CurrentTradingPeriod(
    pre: Post.fromMap(json["pre"]),
    regular: Post.fromMap(json["regular"]),
    post: Post.fromMap(json["post"]),
  );

  Map<String, dynamic> toMap() => {
    "pre": pre!.toMap(),
    "regular": regular!.toMap(),
    "post": post!.toMap(),
  };
}

class Post {
  Post({
    this.timezone,
    this.start,
    this.end,
    this.gmtoffset,
  });

  final String? timezone;
  final int? start;
  final int? end;
  final int? gmtoffset;

  factory Post.fromJson(String str) => Post.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Post.fromMap(Map<String, dynamic> json) => Post(
    timezone: json["timezone"],
    start: json["start"],
    end: json["end"],
    gmtoffset: json["gmtoffset"],
  );

  Map<String, dynamic> toMap() => {
    "timezone": timezone,
    "start": start,
    "end": end,
    "gmtoffset": gmtoffset,
  };
}
