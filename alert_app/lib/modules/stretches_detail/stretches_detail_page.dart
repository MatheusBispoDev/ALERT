import 'package:alert_app/application/ui/widgets/appbar.dart';
import 'package:alert_app/modules/stretches_detail/stretches_detail_controller.dart';
import 'package:alert_app/modules/stretches_detail/widgets/stretches_video_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

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
