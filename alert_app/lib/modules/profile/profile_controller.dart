import 'package:alert_app/application/profile_configurations/profile_configurations.dart';
import 'package:alert_app/application/ui/messages/messages_mixin.dart';
import 'package:alert_app/services/profile/profile_service.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController with MessagesMixin {
  ProfileController({
    required ProfileService profileSevice,
    required ProfileConfiguarions profileConfiguarions,
  })  : _profileSevice = profileSevice,
        _profileConfiguarions = profileConfiguarions;

  final message = Rxn<MessageModel>();
  final ProfileService _profileSevice;
  final ProfileConfiguarions _profileConfiguarions;
  final image = RxnString();

  @override
  void onInit() {
    super.onInit();
    messageListener(message);
    image.value = _profileConfiguarions.imageFileProfile;
  }

  Future<void> getImageGallery() async {
    try {
      final pathImagePicker = await _profileSevice.getImageGallery();
      _profileConfiguarions.imageFileProfile = pathImagePicker;
      image.value = _profileConfiguarions.imageFileProfile;
    } on Exception catch (e, s) {
      print('Error ProfileController [$e]');
      print('Error ProfileController [$s]');
      message(MessageModel.error(
          title: 'Error', message: 'Error ao acessar galeria'));
    }
  }

  Future<void> logout() async {
    await _profileSevice.logout();
  }
}
