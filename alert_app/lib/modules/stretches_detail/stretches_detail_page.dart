import 'package:alert_app/application/ui/widgets/appbar.dart';
import 'package:alert_app/modules/stretches_detail/stretches_detail_controller.dart';
import 'package:alert_app/modules/stretches_detail/widgets/stretches_video_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class StrechesDetailPage extends GetView<StrechesDetailController> {
  const StrechesDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
          title: 'Alongamento de ${controller.title}', fontSize: 24),
      body: SizedBox(
        height: Get.size.height,
        width: Get.size.width,
        child: ListView.builder(
          itemCount: controller.arguments[1],
          itemBuilder: (context, index) => Obx(() {
            return StretchesVideoCard(
              onTap: () {
                controller.pauses[index].value
                    ? controller.videoResume(indexVideo: index)
                    : controller.videoPause(indexVideo: index);
              },
              onLongPress: () {
                launch(controller.getLink(indexLink: index));
              },
              videoController: controller.videosController[index],
              pause: controller.pauses[index].value,
            );
          }),
        ),
      ),
    );
  }
}
