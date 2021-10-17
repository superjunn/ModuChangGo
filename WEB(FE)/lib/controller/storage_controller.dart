import 'package:get/get.dart';
import 'package:moduchango/domain/storage/storage.dart';
import 'package:moduchango/domain/storage/storage_repository.dart';

class StorageController extends GetxController {
  final StorageRepository _storageRepository = StorageRepository();
  final storages = <Storage>[].obs;

  @override
  void onInit() {
    super.onInit();
    findAll();
  }

  Future<void> findAll() async {
    List<Storage> storages = await _storageRepository.findAll();
    this.storages.value = storages;
  }

  // Future<void> findByName(String name) async {
  //   Storage storage = await _storageRepository.findById(name);
  //   this.storage.value = storage;
  // }
}
