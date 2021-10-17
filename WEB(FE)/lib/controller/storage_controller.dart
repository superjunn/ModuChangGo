import 'package:get/get.dart';
import 'package:moduchango/domain/storage/storage_repository.dart';

class StorageController extends GetxController {
  final StorageRepository _storageRepository = StorageRepository();
  Future<String> findAll(){
    Future<String> ret = _storageRepository.findAll();
    return ret;
  }
}
