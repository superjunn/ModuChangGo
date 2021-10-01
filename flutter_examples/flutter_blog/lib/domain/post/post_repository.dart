import 'package:flutter_blog/controller/dto/CMRespDTO.dart';
import 'package:flutter_blog/domain/post/post.dart';
import 'package:get/get.dart';

import 'post_provider.dart';

// Call communication and refactor the response data to pretty => json => Dart Object
class PostRepository {
  final PostProvider _postProvider = PostProvider();

  Future<void> findAll() async {
    Response response = await _postProvider.findAll();
    dynamic body = response.body;
    // print(body);
    // dynamic convertBody = convertUtf8ToObject(body);
    // 어차피 한글로 잘 바껴서 상관 없음 안해줘도 됨
    CMRespDto cmRespDto = CMRespDto.fromJson(body);
    print(cmRespDto.code);
    print(cmRespDto.msg);
    print(cmRespDto.data.runtimeType);

    if (cmRespDto.code == 1) {
      List<dynamic> temp = cmRespDto.data;
      List<Post> posts = temp.map((post) => Post.fromJson(post)).toList();
      print(posts.length);
      print(posts[0].title);
    } else {}
  }
}
