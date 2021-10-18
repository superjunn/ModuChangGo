import 'package:get/get.dart';
import 'package:moduchango/domain/history/history.dart';
import 'package:moduchango/domain/history/history_repository.dart';

class HistoryController extends GetxController {
  final HistoryRepository _historyRepository = HistoryRepository();
  final history = <History>[].obs;

  @override
  void onInit() {
    super.onInit();
    findAll();
  }

  Future<void> findAll() async {
    List<History> histories = await _historyRepository.findAll();
    this.history.value = histories;
  }
}
