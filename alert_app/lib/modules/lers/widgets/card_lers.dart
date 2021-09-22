import 'package:alert_app/models/lers_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CardLers extends StatelessWidget {
  final LersModel ler;

  const CardLers({Key? key, required this.ler}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed('/lers/detail', arguments: ler);
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.1,
        child: Card(
          shape: InputBorder.none,
          borderOnForeground: false,
          child: ListTile(
            title: Text(
              ler.name,
              maxLines: 1,
              style: TextStyle(
                color: new Color(0xFF334856),
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              ler.description,
              maxLines: 2,
            ),
            trailing: Icon(
              Icons.navigate_next,
              size: 32,
              color: new Color(0xFF334856),
            ),
          ),
        ),
      ),
    );
  }
}
