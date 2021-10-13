import 'package:get/get.dart';
import 'package:moduchango/domain/storage/storage_provider.dart';

class StorageRepository {
  final StorageProvider _storageProvider = StorageProvider();

  Future<void> findAll() async {
    Response response = await _storageProvider.findAll();
    dynamic body = response.body;
    print(body);
  }
}
