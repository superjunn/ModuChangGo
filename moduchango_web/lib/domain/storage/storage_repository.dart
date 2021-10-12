import 'package:get/get_connect.dart';
import 'package:moduchango/domain/storage/storage.dart';
import 'package:moduchango/domain/storage/storage_provider.dart';

//통신을 호출해서 응답되는 데이터를 예쁘게 가공 => json => Dart 오브젝트
class StorageRepository {
  final StorageProvider _storageProvider = StorageProvider();

  Future<List<Storage>> view(String storageName, String location, String manager, int image) async {
    Response response = await _storageProvider.view();
    // dynamic headers = response.headers;
    // view에서 딱히 header를 볼 필요가 없어서 주석처리
    dynamic body = response.body;
    List<Storage> storages = body.map((storage) => Storage.fromJson(storage)).toList();
    return storages;
  }
}
