import 'package:alert_app/repositories/profile/profile_repository.dart';

import 'profile_service.dart';

class ProfileServiceImpl implements ProfileService {

  final ProfileRepository _profileRepository;

  ProfileServiceImpl({required ProfileRepository profileRepository}) : _profileRepository = profileRepository;

  @override
  Future<String> getImageGallery() => _profileRepository.getImageGallery();

}