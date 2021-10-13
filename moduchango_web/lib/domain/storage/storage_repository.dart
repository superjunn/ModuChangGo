import 'package:get/get_connect.dart';
import 'package:moduchango/domain/storage/storage.dart';
import 'package:moduchango/domain/storage/storage_provider.dart';

//통신을 호출해서 응답되는 데이터를 예쁘게 가공 => json => Dart 오브젝트
class StorageRepository {
  final StorageProvider _storageProvider = StorageProvider();

  Future<void> view() async {
    Response response = await _storageProvider.view();
    dynamic body = response.body;
    print("body : ${body}");
    // List<Storage> storages =
    //     body.map((storage) => Storage.fromJson(storage)).toList();
    // print(storages);
    // return storages;
  }
}
