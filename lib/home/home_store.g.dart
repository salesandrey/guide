// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeStore on HomeStoreBase, Store {
  late final _$chartsAtom =
      Atom(name: 'HomeStoreBase.charts', context: context);

  @override
  ChartModel? get charts {
    _$chartsAtom.reportRead();
    return super.charts;
  }

  @override
  set charts(ChartModel? value) {
    _$chartsAtom.reportWrite(value, super.charts, () {
      super.charts = value;
    });
  }

  late final _$datesAtom = Atom(name: 'HomeStoreBase.dates', context: context);

  @override
  List<DateTime> get dates {
    _$datesAtom.reportRead();
    return super.dates;
  }

  @override
  set dates(List<DateTime> value) {
    _$datesAtom.reportWrite(value, super.dates, () {
      super.dates = value;
    });
  }

  late final _$quotesOpeningAtom =
      Atom(name: 'HomeStoreBase.quotesOpening', context: context);

  @override
  List<double> get quotesOpening {
    _$quotesOpeningAtom.reportRead();
    return super.quotesOpening;
  }

  @override
  set quotesOpening(List<double> value) {
    _$quotesOpeningAtom.reportWrite(value, super.quotesOpening, () {
      super.quotesOpening = value;
    });
  }

  late final _$objectGraphAtom =
      Atom(name: 'HomeStoreBase.objectGraph', context: context);

  @override
  ObservableMap<int, double> get objectGraph {
    _$objectGraphAtom.reportRead();
    return super.objectGraph;
  }

  @override
  set objectGraph(ObservableMap<int, double> value) {
    _$objectGraphAtom.reportWrite(value, super.objectGraph, () {
      super.objectGraph = value;
    });
  }

  late final _$maxValueObjectGraphAtom =
      Atom(name: 'HomeStoreBase.maxValueObjectGraph', context: context);

  @override
  double get maxValueObjectGraph {
    _$maxValueObjectGraphAtom.reportRead();
    return super.maxValueObjectGraph;
  }

  @override
  set maxValueObjectGraph(double value) {
    _$maxValueObjectGraphAtom.reportWrite(value, super.maxValueObjectGraph, () {
      super.maxValueObjectGraph = value;
    });
  }

  late final _$minValueObjectGraphAtom =
      Atom(name: 'HomeStoreBase.minValueObjectGraph', context: context);

  @override
  double get minValueObjectGraph {
    _$minValueObjectGraphAtom.reportRead();
    return super.minValueObjectGraph;
  }

  @override
  set minValueObjectGraph(double value) {
    _$minValueObjectGraphAtom.reportWrite(value, super.minValueObjectGraph, () {
      super.minValueObjectGraph = value;
    });
  }

  late final _$objectGraph2Atom =
      Atom(name: 'HomeStoreBase.objectGraph2', context: context);

  @override
  ObservableMap<int, double> get objectGraph2 {
    _$objectGraph2Atom.reportRead();
    return super.objectGraph2;
  }

  @override
  set objectGraph2(ObservableMap<int, double> value) {
    _$objectGraph2Atom.reportWrite(value, super.objectGraph2, () {
      super.objectGraph2 = value;
    });
  }

  late final _$maxValueObjectGraph2Atom =
      Atom(name: 'HomeStoreBase.maxValueObjectGraph2', context: context);

  @override
  double get maxValueObjectGraph2 {
    _$maxValueObjectGraph2Atom.reportRead();
    return super.maxValueObjectGraph2;
  }

  @override
  set maxValueObjectGraph2(double value) {
    _$maxValueObjectGraph2Atom.reportWrite(value, super.maxValueObjectGraph2,
        () {
      super.maxValueObjectGraph2 = value;
    });
  }

  late final _$minValueObjectGraph2Atom =
      Atom(name: 'HomeStoreBase.minValueObjectGraph2', context: context);

  @override
  double get minValueObjectGraph2 {
    _$minValueObjectGraph2Atom.reportRead();
    return super.minValueObjectGraph2;
  }

  @override
  set minValueObjectGraph2(double value) {
    _$minValueObjectGraph2Atom.reportWrite(value, super.minValueObjectGraph2,
        () {
      super.minValueObjectGraph2 = value;
    });
  }

  late final _$loadingAtom =
      Atom(name: 'HomeStoreBase.loading', context: context);

  @override
  bool get loading {
    _$loadingAtom.reportRead();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.reportWrite(value, super.loading, () {
      super.loading = value;
    });
  }

  late final _$getChartsAsyncAction =
      AsyncAction('HomeStoreBase.getCharts', context: context);

  @override
  Future<void> getCharts({required String symbol}) {
    return _$getChartsAsyncAction.run(() => super.getCharts(symbol: symbol));
  }

  late final _$HomeStoreBaseActionController =
      ActionController(name: 'HomeStoreBase', context: context);

  @override
  dynamic setLoading(bool value) {
    final _$actionInfo = _$HomeStoreBaseActionController.startAction(
        name: 'HomeStoreBase.setLoading');
    try {
      return super.setLoading(value);
    } finally {
      _$HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
charts: ${charts},
dates: ${dates},
quotesOpening: ${quotesOpening},
objectGraph: ${objectGraph},
maxValueObjectGraph: ${maxValueObjectGraph},
minValueObjectGraph: ${minValueObjectGraph},
objectGraph2: ${objectGraph2},
maxValueObjectGraph2: ${maxValueObjectGraph2},
minValueObjectGraph2: ${minValueObjectGraph2},
loading: ${loading}
    ''';
  }
}
