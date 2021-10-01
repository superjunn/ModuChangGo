import 'package:get/get.dart';

const host = "http://192.168.219.100:8080";

// Communication
class UserProvider extends GetConnect {
  // Promise (We assure the data will be given)
  Future<Response> login(Map data) => post("$host/login", data);
}
