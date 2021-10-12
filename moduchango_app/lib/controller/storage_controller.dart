import 'package:get/get.dart';
import 'package:moduchango_app/domain/storage/storage_repository.dart';

class StorageController extends GetxController {
  final StorageRepository _storageRepository = StorageRepository();
  void findAll() {
    _storageRepository.findAll();
  }
}
