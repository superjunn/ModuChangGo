import 'package:get/get.dart';
import 'package:moduchango/domain/content/content.dart';
import 'package:moduchango/domain/holder/holder.dart';
import 'package:moduchango/domain/holder/holder_provider.dart';

class HolderRepository {
  final HolderProvider _holderProvider = HolderProvider();

  Future<List<Holder>> findAll() async {
    Response response = await _holderProvider.findAll();
    dynamic body = response.body;
    print("레포지토리가 받아온 holder body는 ?? : ${body}");
    print("holder repository 에서 런타입음 ?? : ${body.runtimeType}");

    if (body.runtimeType == List) {
      List<dynamic> temp = body;
      List<Holder> holders = temp.map((e) => Holder.fromJson(e)).toList();
      print("holders is 정상적으로 넘어감 !");
      return holders;
    } else {
      print("런타임타입이 리스트가 아니어서 디폴트 빈리스트 리턴 in REpository !!");
      return <Holder>[];
    }
  }

  Future<List<Content>> findById(String id) async {
    Response response = await _holderProvider.findById(id);
    dynamic body = response.body;
    if (body.runtimeType == List) {
      List<dynamic> temp = body;
      List<Content> contents = temp.map((e) => Content.fromJson(e)).toList();
      return contents;
    } else {
      print("런타임타입이 리스트가 아니어서 디폴트 빈리스트 리턴 in Repository findByName !!");
      return <Content>[];
    }
  }
}
