import 'package:get/get.dart';

// 각자 환경에 맞게 바꿔야함 : 코드스페이스 리눅스는 뭘 써야하는감 ?
// 걍 점프데스크탑으로 써야겠다 ~
const host = "http://192.168.219.100:3000";

//통신
class StorageProvider extends GetConnect {
  // Promise (데이터 약속)
  Future<Response> view() => get("$host/storages");

  Future<Response> add(Map data) => post("$host/storages/add", data);
}
