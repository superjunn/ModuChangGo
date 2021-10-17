import 'package:get/get.dart';
import 'package:moduchango/domain/storage/storage.dart';
import 'package:moduchango/domain/storage/storage_provider.dart';

class StorageRepository {
  final StorageProvider _storageProvider = StorageProvider();

  Future<List<Storage>> findAll() async {
    Response response = await _storageProvider.findAll();
    dynamic body = response.body;
    print("body : ${body}");

    List<Storage> storages =
        body.map((storage) => Storage.fromJson(storage)).toList();
    return storages;
  }
}
