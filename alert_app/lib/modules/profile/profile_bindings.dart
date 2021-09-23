import 'package:alert_app/repositories/profile/profile_repository.dart';
import 'package:alert_app/repositories/profile/profile_repository_impl.dart';
import 'package:alert_app/services/profile/profile_service.dart';
import 'package:alert_app/services/profile/profile_service_impl.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'profile_controller.dart';

class ProfileBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfileRepository>(
        () => ProfileRepositoryImpl(imagePicker: ImagePicker()));
    Get.lazyPut<ProfileService>(
        () => ProfileServiceImpl(profileRepository: Get.find()));

    Get.put(ProfileController(profileSevice: Get.find(), profileConfiguarions: Get.find()));
  }
}
