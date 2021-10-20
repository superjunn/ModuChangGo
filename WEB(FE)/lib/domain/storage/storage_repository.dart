import 'package:get/get.dart';
import 'package:moduchango/controller/dto/cm_resp_dto.dart';
import 'package:moduchango/controller/dto/init_edit_req_dto.dart';
import 'package:moduchango/domain/content/content.dart';
import 'package:moduchango/domain/storage/storage.dart';
import 'package:moduchango/domain/storage/storage_provider.dart';

class StorageRepository {
  final StorageProvider _storageProvider = StorageProvider();

  Future<List<Storage>> findAll() async {
    Response response = await _storageProvider.findAll();
    dynamic body = response.body;
    // print("레포지토리가 받아온 body는 ?? : ${body}");

    if (true) {
      List<dynamic> temp = body;
      List<Storage> storages = temp.map((e) => Storage.fromJson(e)).toList();
      return storages;
    } else {
      return <Storage>[];
    }
  }

  Future<List<Content>> findByName(String storageName) async {
    Response response = await _storageProvider.findByName(storageName);
    dynamic body = response.body;
    print("print!!!@!@ : $body");
    if (true) {
      List<dynamic> temp = body;
      List<Content> contents = temp.map((e) => Content.fromJson(e)).toList();
      print("contents!!@#!@# :L ${contents[0].contentName}");
      return contents;
    } else {
      return <Content>[];
    }
  }

  Future<Storage> init(
      {required String storageName,
      required String location,
      required int image}) async {
    InitEditReqDto initReqDto = InitEditReqDto(
        storageName: storageName, location: location, image: image);
    Response response = await _storageProvider.init(initReqDto.toJson());
    dynamic body = response.body;
    CMRespDto temp = CMRespDto.fromJson(body);

    String result = temp.result!;

    if (result == "1") {
      // print("창고 추가 성공");
      Storage storage = Storage.fromJson(initReqDto.toJson());
      return storage;
    } else {
      // print("창고 추가 실패");
      return Storage();
    }
  }

  Future<int> deleteByName(String storageName) async {
    Response response = await _storageProvider.deleteByName(storageName);
    dynamic body = response.body;
    int temp = body["result"];
    print("temp??!? : $temp");
    return temp;
  }
}
