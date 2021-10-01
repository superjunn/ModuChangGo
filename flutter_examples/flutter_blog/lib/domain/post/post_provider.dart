import 'package:flutter_blog/util/jwt.dart';
import 'package:get/get.dart';

const host = "http://192.168.219.100:8080";

// Communication
class PostProvider extends GetConnect {
  // Promise (We assure the data will be given)
  Future<Response> findAll() =>
      get("$host/post", headers: {"Authorization": jwtToken ?? ""});
}
