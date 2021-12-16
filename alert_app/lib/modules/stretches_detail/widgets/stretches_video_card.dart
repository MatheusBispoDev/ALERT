import 'package:alert_app/modules/stretches_detail/widgets/controls_overlay.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

class StretchesVideoCard extends StatelessWidget {
  StretchesVideoCard({
    Key? key,
    required this.onTap,
    required this.onLongPress,
    required this.videoController,
    required this.pause,
  }) : super(key: key);

  final VideoPlayerController videoController;
  final Function() onTap;
  final Function() onLongPress;
  final bool pause;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        elevation: 2,
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        child: GestureDetector(
          onTap: onTap,
          onLongPress: onLongPress,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              height: Get.size.height * 0.3,
              width: Get.size.width,
              child: AspectRatio(
                aspectRatio: videoController.value.aspectRatio,
                child: Stack(
                  children: [
                    VideoPlayer(videoController),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 8,
                        right: 8,
                        bottom: 4,
                      ),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: VideoProgressIndicator(
                          videoController,
                          allowScrubbing: true,
                        ),
                      ),
                    ),
                    ControlsOverlay(
                      controller: videoController,
                      pause: pause,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
