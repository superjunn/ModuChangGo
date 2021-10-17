import 'package:get/get.dart';
import 'package:moduchango/domain/content/content.dart';
import 'package:moduchango/domain/storage/storage.dart';
import 'package:moduchango/domain/storage/storage_repository.dart';

class StorageController extends GetxController {
  final StorageRepository _storageRepository = StorageRepository();
  final storages = <Storage>[].obs;
  final storage = <Content>[].obs;

  @override
  void onInit() {
    super.onInit();
    findAll();
  }

  Future<void> findAll() async {
    List<Storage> storages = await _storageRepository.findAll();
    this.storages.value = storages;
  }

  Future<void> findByID(String storageName) async {
    List<Content> storage = await _storageRepository.findByName(storageName);
    this.storage.value = storage;
  }

  // Future<void> findByName(String name) async {
  //   Storage storage = await _storageRepository.findById(name);
  //   this.storage.value = storage;
  // }
}
