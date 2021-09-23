import 'package:image_picker/image_picker.dart';

import './profile_repository.dart';

class ProfileRepositoryImpl implements ProfileRepository {
  final ImagePicker _imagePicker;

  ProfileRepositoryImpl({required ImagePicker imagePicker})
      : _imagePicker = imagePicker;

  @override
  Future<String> getImageGallery() async {
    final XFile? image = await _imagePicker.pickImage(source: ImageSource.gallery);

    return image?.path ?? '';
  }
}
