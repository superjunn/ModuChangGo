import 'package:get/get.dart';
import 'package:moduchango/domain/storage/storage.dart';
import 'package:moduchango/domain/storage/storage_provider.dart';

class StorageRepository {
  final StorageProvider _storageProvider = StorageProvider();

  Future<List<Storage>> findAll() async {
    Response response = await _storageProvider.findAll();
    dynamic body = response.body;
    print("body : ${body}");

    if (body.runtimeType == List) {
      List<dynamic> temp = body;
      List<Storage> storages = temp.map((e) => Storage.fromJson(e)).toList();
      return storages;
    } else {
      print("여기서 이게 출력되는구만 왜 못 받는 거야 띠 뽜 !!!");
      return <Storage>[];
    }
  }
}
