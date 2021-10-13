import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:moduchango/domain/storage/storage_repository.dart';

class StorageController extends GetxController {
  final StorageRepository _storageRepository = StorageRepository();

  void view() {
    _storageRepository.view();
  }
}
