





import 'package:guide/home/viewmodels/calculate_viewmodel.dart';
import 'package:guide/models/chart_model.dart';
import 'package:guide/repository/investments_repository.dart';
import 'package:mobx/mobx.dart';

part 'home_store.g.dart';

class HomeStore = HomeStoreBase with _$HomeStore;

abstract class HomeStoreBase with Store {

  HomeStoreBase({required this.repository});

  final InvestmentsRepository repository;

  @observable
  ChartModel? charts;

  @observable
  List<DateTime> dates = <DateTime>[];

  @observable
  List<double> quotesOpening = <double>[];

  @observable
  ObservableMap<int,double> objectGraph = <int,double>{}.asObservable();

  @observable
  double maxValueObjectGraph = 0.0;

  @observable
  double minValueObjectGraph = 0.0;

  @observable
  ObservableMap<int,double> objectGraph2 = <int,double>{}.asObservable();

  @observable
  double maxValueObjectGraph2 = 0.0;

  @observable
  double minValueObjectGraph2 = 0.0;

  @observable
  bool loading = false;

  @action
  setLoading(bool value) => loading = value;

  @action
  Future<void> getCharts({required String symbol}) async {

    dates.clear();
    quotesOpening.clear();
    objectGraph.clear();
    objectGraph2.clear();

    setLoading(true);

    charts = await repository.getCharts(period1: 1669896000, period2: 1672488000,symbol: symbol);

    if (charts != null) {

      charts?.chart?.result?.first?.timestamp?.forEach((element) => dates.add(DateTime.fromMillisecondsSinceEpoch(element!* 1000)));
      charts?.chart?.result?.first?.indicators?.quote?.first?.open?.forEach((element) => quotesOpening.add(element!));

      if (quotesOpening.isNotEmpty && dates.isNotEmpty) {

        for (int i = 0; i < dates.length; i++) {

          if(i + 1 < dates.length) {
            objectGraph.putIfAbsent(dates[i + 1].day, () {
              if (i + 1 < quotesOpening.length) {
                double value = CalculateViewModel().calculatePercentByOneDay(
                    quotesOpening[i], quotesOpening[i + 1]);
                return value;
              }

              else {
                return 0.0;
              }
            });
          }

          if(i + 1 < dates.length) {
            objectGraph2.putIfAbsent(dates[i + 1].day, () {
              if (i + 1 < quotesOpening.length) {
                double value = CalculateViewModel().calculatePercentByOneDay(
                    quotesOpening[0], quotesOpening[i + 1]);
                return value;
              }

              else {
                double value = CalculateViewModel().calculatePercentByOneDay(
                    quotesOpening[0], quotesOpening[i]);
                return value;
              }
            });
          }
        }
      }

      maxValueObjectGraph = objectGraph.values.reduce((value, element) => value > element? value: element);

      minValueObjectGraph = objectGraph.values.reduce((value, element) => value < element? value: element);

      maxValueObjectGraph2 = objectGraph2.values.reduce((value, element) => value > element? value: element);

      minValueObjectGraph2 = objectGraph2.values.reduce((value, element) => value < element? value: element);

    }

    setLoading(false);

  }

}