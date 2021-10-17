import 'package:get/get.dart';
import 'package:moduchango_app/domain/storage/content.dart';
import 'package:moduchango_app/domain/storage/storage.dart';
import 'package:moduchango_app/domain/storage/storage_provider.dart';

class StorageRepository {
  final StorageProvider _storageProvider = StorageProvider();

  Future<List<Content>> findByName(String storageName) async {
    Response response = await _storageProvider.findByName(storageName);
    dynamic body = response.body;
    if (body.runtimeType == List) {
      List<dynamic> temp = body;
      List<Content> contents = temp.map((e) => Content.fromJson(e)).toList();
      //print(storages.length)
      //print(storages[0].strageName)
      return contents;
    } else {
      return <Content>[];
    }
  }

  Future<List<Storage>> findAll() async {
    Response response = await _storageProvider.findAll();
    dynamic body = response.body;
    print(body);
    if (body.runtimeType == List) {
      List<dynamic> temp = body;
      List<Storage> storages = temp.map((e) => Storage.fromJson(e)).toList();
      //print(storages.length)
      //print(storages[0].strageName)
      return storages;
    } else {
      return <Storage>[];
    }
  }
}
