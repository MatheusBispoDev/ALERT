import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:image_picker/image_picker.dart';
import './profile_repository.dart';

class ProfileRepositoryImpl implements ProfileRepository {
  final ImagePicker _imagePicker;

  ProfileRepositoryImpl({required ImagePicker imagePicker})
      : _imagePicker = imagePicker;

  @override
  Future<String> getImageGallery() async {
    final XFile? image =
        await _imagePicker.pickImage(source: ImageSource.gallery);

    return image?.path ?? '';
  }

  @override
  Future<void> logout() async {
    await GoogleSignIn().signOut();
    FirebaseAuth.instance.signOut();
  }
}
