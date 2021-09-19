import 'package:alert_app/modules/lers/widgets/lers_category.dart';
import 'package:flutter/material.dart';

class LersHeader extends StatelessWidget {
  const LersHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.width * 0.6,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      decoration: BoxDecoration(
        color: new Color(0xFF334856),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40.0),
          topRight: Radius.circular(40.0),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Divider(
            color: Colors.white,
            thickness: 3,
            indent: 160,
            endIndent: 160,
          ),
          SizedBox(height: 20),
          Text('Selecione a categoria',
              style: TextStyle(color: Colors.white, fontSize: 16)),
          SizedBox(height: 20),
          Text('Filtre as LERS por:',
              style: TextStyle(color: Colors.white, fontSize: 14)),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LersCategory(
                title: 'Mãos',
                icon: Icons.safety_divider,
                onTap: () {},
              ),
              LersCategory(
                title: 'Costas',
                icon: Icons.handyman,
                onTap: () {},
              ),
              LersCategory(
                title: 'Lombrar',
                icon: Icons.baby_changing_station,
                onTap: () {},
              ),
              LersCategory(
                title: 'Outros',
                icon: Icons.e_mobiledata,
                onTap: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
