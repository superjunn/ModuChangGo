import 'package:get/get.dart';
import 'package:moduchango/domain/content/content.dart';
import 'package:moduchango/domain/storage/storage.dart';
import 'package:moduchango/domain/storage/storage_repository.dart';

class StorageController extends GetxController {
  final StorageRepository _storageRepository = StorageRepository();
  final storages = <Storage>[].obs;
  final contents = <Content>[].obs;

  @override
  void onInit() {
    super.onInit();
    findAll();
  }

  Future<void> init(
      {required String storageName,
      required String location,
      required int image}) async {
    Storage storage = await _storageRepository.init(
        storageName: storageName, location: location, image: image);
    this.storages.add(storage);
    print("창고 추가 완료 !!");
  }

  Future<void> findAll() async {
    List<Storage> storages = await _storageRepository.findAll();
    this.storages.value = storages;
  }

  Future<void> findByName(String storageName) async {
    List<Content> contents = await _storageRepository.findByName(storageName);
    this.contents.value = contents;
  }

  Future<void> deleteByName(String storageName) async {
    int result = await _storageRepository.deleteByName(storageName);

    if (result == 1) {
      print("서버 쪽 삭제 성공");
    } else {
      print("컨트롤러에서 삭제 실패함");
    }
  }
}
