import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:personal_profile_presenter/model/profile_model.dart';

class PersonalProfileController extends GetxController {
  final RxBool loading = RxBool(false);
  late final List<ProfileModel> profile;

  @override
  void onInit() {
    getUserProfile();
    super.onInit();
  }

  Future<void> getUserProfile() async {
    try {
      loading(true);
      final response = await Dio().get("https://jsonplaceholder.typicode.com/users");
      print(response.data);
      if (response.statusCode == 200) {
        profile = List<ProfileModel>.from(response.data.map((e) => ProfileModel.fromJson(e)));
      }
    } catch (e) {
      print(e);
    } finally {
      loading(false);
    }
  }
}
