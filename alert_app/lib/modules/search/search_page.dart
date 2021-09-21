import 'package:alert_app/modules/search/widgets/search_content.dart';
import 'package:alert_app/modules/search/widgets/search_header.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './search_controller.dart';

class SearchPage extends GetView<SearchController> {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SizedBox(
        height: Get.height,
        width: Get.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SearchHeader(),
            SearchContent(),
          ],
        ),
      ),
    );
  }
}
