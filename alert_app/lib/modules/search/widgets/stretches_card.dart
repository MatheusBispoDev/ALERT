import 'package:flutter/material.dart';
    
class StretchesCard extends StatelessWidget {
  const StretchesCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Material(
        elevation: 2,
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        child: Container(
          height: 188,
          width: 150,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                bottom: 60,
                child: Icon(
                  Icons.data_saver_off,
                  size: 50,
                  color: Colors.orange,
                ),
              ),
              Positioned(
                bottom: 40,
                child: Text(
                  'Braços',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ),
              Positioned(
                bottom: 20,
                child: Text(
                  'Superior',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 10,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
