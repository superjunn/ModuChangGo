import 'package:get/get.dart';
import 'package:moduchango_app/domain/history/history.dart';
import 'package:moduchango_app/domain/history/history_repository.dart';

class HistoryController extends GetxController {
  final HistoryRepository _historyRepository = HistoryRepository();
  final history = <History>[].obs;

  @override
  void onInit() {
    super.onInit();
    findAll();
  }

  Future<void> findAll() async {
    List<History> storages = await _historyRepository.findAll();
    this.history.value = storages;
  }
}
