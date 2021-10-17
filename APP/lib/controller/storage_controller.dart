import 'package:get/get.dart';
import 'package:moduchango_app/domain/storage/content.dart';
import 'package:moduchango_app/domain/storage/storage.dart';
import 'package:moduchango_app/domain/storage/storage_repository.dart';

class StorageController extends GetxController {
  final StorageRepository _storageRepository = StorageRepository();
  final storages = <Storage>[].obs;
  final contents = <Content>[].obs;

  @override
  void onInit() {
    super.onInit();
    findAll();
  }

  Future<void> findAll() async {
    List<Storage> storages = await _storageRepository.findAll();
    this.storages.value = storages;
  }

  Future<void> findByName(String storageName) async {
    List<Content> contents = await _storageRepository.findByName(storageName);
    this.contents.value = contents;
  }
}
