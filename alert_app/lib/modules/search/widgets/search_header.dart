import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchHeader extends StatelessWidget {
  const SearchHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
      child: Center(
        child: Container(
          width: Get.width * 0.9,
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide.none,
              ),
              filled: true,
              fillColor: Color(0xFFF5F5F5),
              labelText: 'Procurar ler',
              labelStyle: TextStyle(
                fontSize: 15,
                color: Colors.black45,
              ),
              floatingLabelBehavior: FloatingLabelBehavior
                  .never, // O label desaparece quando é clicado no textfield
              suffixIcon: Icon(Icons.search),
              contentPadding: const EdgeInsets.symmetric(
                  horizontal: 30), // Tira o espaço de dentro do TextField
            ),
          ),
        ),
      ),
    );
  }
}
