import 'package:get/get.dart';
import 'package:moduchango_app/controller/dto/SaveReqDto.dart';
import 'package:moduchango_app/controller/dto/UpdateReqDto.dart';
import 'package:moduchango_app/domain/storage/content.dart';
import 'package:moduchango_app/domain/storage/delete_add_edt.dart';
import 'package:moduchango_app/domain/storage/storage.dart';
import 'package:moduchango_app/domain/storage/storage_provider.dart';

class StorageRepository {
  final StorageProvider _storageProvider = StorageProvider();

  Future<int> save(String storageName, String location) async {
    SaveReqDto saveReqDto = SaveReqDto(storageName, location);
    Response response = await _storageProvider.save(saveReqDto.toJson());
    dynamic body = response.body;
    return 1;
  }

  Future<int> update(
      String orgStorageName, String newStorageName, String location) async {
    UpdateReqDto updateReqDto = UpdateReqDto(newStorageName, location);
    Response response =
        await _storageProvider.update(orgStorageName, updateReqDto.toJson());
    dynamic body = response.body;
    return 1;
  }

  Future<int> deleteByName(String storageName) async {
    Response response = await _storageProvider.deleteByName(storageName);
    dynamic body = response.body;
    return 1;
  }

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
