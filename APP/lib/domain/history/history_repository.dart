import 'package:get/get.dart';
import 'package:moduchango_app/domain/history/history.dart';
import 'package:moduchango_app/domain/history/history_provider.dart';

class HistoryRepository {
  final HistoryProvider _historyProvider = HistoryProvider();

  Future<List<History>> findAll() async {
    Response response = await _historyProvider.findAll();
    dynamic body = response.body;
    if (body.runtimeType == List) {
      List<dynamic> temp = body;
      List<History> history = temp.map((e) => History.fromJson(e)).toList();
      //print(storages.length)
      //print(storages[0].strageName)
      return history;
    } else {
      return <History>[];
    }
  }
}
