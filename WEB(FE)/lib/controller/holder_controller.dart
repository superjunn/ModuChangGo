import 'package:get/get.dart';
import 'package:moduchango/domain/content/content.dart';
import 'package:moduchango/domain/holder/holder.dart';
import 'package:moduchango/domain/holder/holder_repository.dart';

class HolderController extends GetxController {
  final HolderRepository _holderRepository = HolderRepository();
  final holders = <Holder>[].obs;
  final holder = <Content>[].obs;

  @override
  void onInit() {
    super.onInit();
    findAll();
  }

  Future<void> findAll() async {
    List<Holder> holders = await _holderRepository.findAll();
    this.holders.value = holders;
  }

  Future<void> findByID(String id) async {
    List<Content> Holder = await _holderRepository.findById(id);
    this.holder.value = Holder;
  }

// Future<void> findByName(String name) async {
//   Storage storage = await _storageRepository.findById(name);
//   this.storage.value = storage;
// }
}
