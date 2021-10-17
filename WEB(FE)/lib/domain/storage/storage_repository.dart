import 'package:get/get.dart';
import 'package:moduchango/domain/storage/storage.dart';
import 'package:moduchango/domain/storage/storage_provider.dart';

class StorageRepository {
  final StorageProvider _storageProvider = StorageProvider();

  Future<List<Storage>> findAll() async {
    Response response = await _storageProvider.findAll();
    dynamic body = response.body;
    print("레포지토리가 받아온 body는 ?? : ${body}");

    if (body.runtimeType == List) {
      List<dynamic> temp = body;
      List<Storage> storages = temp.map((e) => Storage.fromJson(e)).toList();
      return storages;
    } else {
      print("런타임타입이 리스트가 아니어서 디폴트 빈리스트 리턴 in REpository !!");
      return <Storage>[];
    }
  }

  Future<>


}
