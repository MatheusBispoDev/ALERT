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
  var arguments;
  List<String> videosLinks = [];
  RxString title = RxString('');

  VideoPlayerController videoHandsController0 = VideoPlayerController.asset(
    'assets/videos/alongamento_maos.mp4',
    videoPlayerOptions: VideoPlayerOptions(mixWithOthers: true),
  );

  VideoPlayerController videoHandsController1 = VideoPlayerController.asset(
    'assets/videos/alongamento_maos2.mp4',
    videoPlayerOptions: VideoPlayerOptions(mixWithOthers: true),
  );

  VideoPlayerController videoHandsController2 = VideoPlayerController.asset(
    'assets/videos/alongamento_maos3.mp4',
    videoPlayerOptions: VideoPlayerOptions(mixWithOthers: true),
  );

  VideoPlayerController videoCostasController0 = VideoPlayerController.asset(
    'assets/videos/alongamento_costas.mp4',
    videoPlayerOptions: VideoPlayerOptions(mixWithOthers: true),
  );

  VideoPlayerController videoLombarController0 = VideoPlayerController.asset(
    'assets/videos/alongamento_lombar.mp4',
    videoPlayerOptions: VideoPlayerOptions(mixWithOthers: true),
  );

  VideoPlayerController videoAllController0 = VideoPlayerController.asset(
    'assets/videos/alongamento_corpo_todo.mp4',
    videoPlayerOptions: VideoPlayerOptions(mixWithOthers: true),
  );

  VideoPlayerController videoPernasController0 = VideoPlayerController.asset(
    'assets/videos/alongamento_pernas.mp4',
    videoPlayerOptions: VideoPlayerOptions(mixWithOthers: true),
  );

  @override
  void onInit() {
    super.onInit();
    loaderListener(loading);
    messageListener(message);

    arguments = Get.arguments;

    if (arguments[0] == 0) {
      videosController.add(videoHandsController0);
      videosController.add(videoHandsController1);
      videosController.add(videoHandsController2);
      videosController[0].initialize().then((value) => {});
      videosController[1].initialize().then((value) => {});
      videosController[2].initialize().then((value) => {});
      pauses.add(true.obs);
      pauses.add(true.obs);
      pauses.add(true.obs);
      videosLinks.add('https://www.youtube.com/watch?v=j9nR4wG2kI0');
      videosLinks.add('https://www.youtube.com/watch?v=29_cD0Kdz9s&t=3s');
      videosLinks.add('https://www.youtube.com/watch?v=mPsEXMQ45j8&t=39s');
      title.value = "Mãos";
    } else if (arguments[0] == 1) {
      videosController.add(videoCostasController0);
      videosController[0].initialize().then((value) => {});
      pauses.add(true.obs);
      videosLinks.add('https://www.youtube.com/watch?v=2CZwtDHBqFw');
      title.value = "Costas";
    } else if (arguments[0] == 2) {
      videosController.add(videoLombarController0);
      videosController[0].initialize().then((value) => {});
      pauses.add(true.obs);
      videosLinks.add('https://www.youtube.com/watch?v=d6FpxJpolKE&t=2s');
      title.value = "Lombar";
    } else if (arguments[0] == 3) {
      videosController.add(videoAllController0);
      videosController[0].initialize().then((value) => {});
      pauses.add(true.obs);
      videosLinks.add('https://www.youtube.com/watch?v=la0p_6JYJrU');
      title.value = "Corpo Todo";
    } else if (arguments[0] == 4) {
      videosController.add(videoPernasController0);
      videosController[0].initialize().then((value) => {});
      pauses.add(true.obs);
      videosLinks.add('https://www.youtube.com/watch?v=XNll0I2Xll0&t=1s');
      title.value = "Pernas";
    }
  }

  @override
  void dispose() {
    Get.delete<StrechesDetailController>();
    super.dispose();
  }

  void videoPause({required int indexVideo}) {
    videosController[indexVideo].pause();
    pauses[indexVideo].value = true;
  }

  void videoResume({required int indexVideo}) {
    videosController[indexVideo].play();
    pauses[indexVideo].value = false;
  }

  String getLink({required int indexLink}) {
    return videosLinks[indexLink];
  }
}
