import 'package:alert_app/application/ui/loader/loader_mixin.dart';
import 'package:alert_app/application/ui/messages/messages_mixin.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

class StrechesDetailController extends GetxController
    with LoaderMixin, MessagesMixin {
  var loading = false.obs;
  var message = Rxn<MessageModel>();
  var pauses = <RxBool>[].obs;
  var videosController = <VideoPlayerController>[].obs;

  VideoPlayerController videoController0 = VideoPlayerController.network(
    'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
    videoPlayerOptions: VideoPlayerOptions(mixWithOthers: true),
  );

  VideoPlayerController videoController1 = VideoPlayerController.network(
    'https://www.youtube.com/watch?v=MdB3sH1tGrA&list=RDhlq7mShSSYU&index=3&ab_channel=Jo%C3%A3oGomes-Topic',
    videoPlayerOptions: VideoPlayerOptions(mixWithOthers: true),
  );

  @override
  void onInit() {
    super.onInit();
    loaderListener(loading);
    messageListener(message);

    videosController.add(videoController0);
    videosController.add(videoController1);
    pauses.add(false.obs);
    pauses.add(false.obs);

    videosController[0].initialize().then((value) => {});
    videosController[1].initialize().then((value) => {});
    //lers.value = Get.arguments;
  }

  void videoPause({required int indexVideo}) {
    videosController[indexVideo].pause();
    pauses[indexVideo].value = true;
  }

  void videoResume({required int indexVideo}) {
    videosController[indexVideo].play();
    pauses[indexVideo].value = false;
  }
}
