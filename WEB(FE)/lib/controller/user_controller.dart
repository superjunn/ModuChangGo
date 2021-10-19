// import 'package:get/get.dart';
//
// class UserController extends GetxController {
//   final StorageRepository _userRepository = UserRepository();
//   final storages = <Storage>[].obs;
//   final contents = <Content>[].obs;
//
//   @override
//   void onInit() {
//     super.onInit();
//     findAll();
//   }
//
//   Future<void> init(
//       {required String storageName,
//       required String location,
//       required int image}) async {
//     Storage storage = await _userRepository.init(
//         storageName: storageName, location: location, image: image);
//     this.storages.add(storage);
//     print("창고 추가 완료 !!");
//   }
//
//   Future<void> findAll() async {
//     List<Storage> storages = await _userRepository.findAll();
//     this.storages.value = storages;
//   }
// }
