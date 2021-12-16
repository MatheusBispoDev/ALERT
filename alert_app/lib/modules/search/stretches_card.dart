import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StretchesCard extends StatelessWidget {
  const StretchesCard({
    Key? key,
    required this.title,
    required this.imageNetwork,
    required this.icon,
    required this.categoy,
    required this.qntDetails,
  }) : super(key: key);

  final String title;
  final String imageNetwork;
  final IconData icon;
  final int categoy;
  final int qntDetails;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: GestureDetector(
        onTap: () {
          Get.toNamed('/search/detail', arguments: [categoy, qntDetails]);
        },
        child: Material(
          elevation: 2,
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
          child: Container(
            height: 200,
            width: 180,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                  bottom: 40,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Image.network(
                      imageNetwork,
                      fit: BoxFit.cover,
                      height: 170,
                      width: 180,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 30,
                  child: Icon(
                    icon,
                    size: 50,
                    color: Colors.orange.shade300,
                  ),
                ),
                Positioned(
                  bottom: 10,
                  child: Text(
                    title,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
