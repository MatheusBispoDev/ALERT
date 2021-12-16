import 'package:alert_app/application/ui/widgets/appbar.dart';
import 'package:alert_app/modules/stretches_detail/stretches_detail_controller.dart';
import 'package:alert_app/modules/stretches_detail/widgets/stretches_video_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class StrechesDetailPage extends GetView<StrechesDetailController> {
  const StrechesDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: 'Alongamento'),
      body: SizedBox(
        height: Get.size.height,
        width: Get.size.width,
        child: ListView(
          children: [
            Obx(() {
              return StretchesVideoCard(
                onTap: () {
                  controller.pauses[0].value
                      ? controller.videoResume(indexVideo: 0)
                      : controller.videoPause(indexVideo: 0);
                },
                videoController: controller.videosController[0],
                pause: controller.pauses[0].value,
              );
            }),
            Obx(() {
              return StretchesVideoCard(
                onTap: () {
                  controller.pauses[1].value
                      ? controller.videoResume(indexVideo: 1)
                      : controller.videoPause(indexVideo: 1);
                },
                videoController: controller.videosController[1],
                pause: controller.pauses[1].value,
              );
            }),
            Obx(() {
              return StretchesVideoCard(
                onTap: () {
                  controller.pauses[1].value
                      ? controller.videoResume(indexVideo: 1)
                      : controller.videoPause(indexVideo: 1);
                },
                videoController: controller.videosController[1],
                pause: controller.pauses[1].value,
              );
            }),
          ],
        ),
      ),
    );
  }
}

class YoutubeModel {
  final int id;
  final String youtubeId;

  const YoutubeModel({required this.id, required this.youtubeId});
}

class YoutubePlayerDemo extends StatefulWidget {
  YoutubePlayerDemo({Key? key}) : super(key: key);

  @override
  _YoutubePlayerDemoState createState() => _YoutubePlayerDemoState();
}

class _YoutubePlayerDemoState extends State<YoutubePlayerDemo> {
  late YoutubePlayerController _ytbPlayerController;

  List<YoutubeModel> videosList = [
    YoutubeModel(id: 1, youtubeId: 'jA14r2ujQ7s'),
  ];

  @override
  void initState() {
    super.initState();

    _setOrientation([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    WidgetsBinding.instance!.addPostFrameCallback((_) {
      setState(() {
        _ytbPlayerController = YoutubePlayerController(
          initialVideoId: YoutubePlayerController.convertUrlToId(
                  'https://www.youtube.com/watch?v=29_cD0Kdz9s&ab_channel=Cl%C3%ADnicadaM%C3%A3o') ??
              '',
          params: YoutubePlayerParams(
            showFullscreenButton: false,
          ),
        );
      });
    });
  }

  @override
  void dispose() {
    super.dispose();

    _setOrientation([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    _ytbPlayerController.close();
  }

  _setOrientation(List<DeviceOrientation> orientations) {
    SystemChrome.setPreferredOrientations(orientations);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 16 / 9,
              child: _ytbPlayerController != null
                  ? YoutubePlayerIFrame(controller: _ytbPlayerController)
                  : Center(child: CircularProgressIndicator()),
            )
          ],
        ),
      ),
    );
  }
}
