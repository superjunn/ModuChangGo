import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:moduchango/domain/storage/storage.dart';
import 'package:moduchango/domain/storage/storage_repository.dart';

class StorageController extends GetxController {
  final StorageRepository _storageRepository = StorageRepository();

  Future<List<Storage>> view(String storageName, String location, String manager, int image) async {
    Storage principal = await _storageRepository.view(storageName, location, manager, image);

    if (principal.id != null) {
      this.isLogin.value = true;
      this.principal.value = principal;
      return 1;
    } else {
      return -1;
    }
  }
}
