import 'package:flutter/material.dart';

class LersPage extends StatelessWidget {
  const LersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Column(
            children: [
              Container(
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
                        IconSelection(
                          title: 'Mãos',
                          icon: Icons.safety_divider,
                          onTap: () {},
                        ),
                        IconSelection(
                          title: 'Costas',
                          icon: Icons.handyman,
                          onTap: () {},
                        ),
                        IconSelection(
                          title: 'Lombrar',
                          icon: Icons.baby_changing_station,
                          onTap: () {},
                        ),
                        IconSelection(
                          title: 'Outros',
                          icon: Icons.e_mobiledata,
                          onTap: () {},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.593,
                child: ListView(
                  children: [
                    CardItens(),
                    CardItens(),
                    CardItens(),
                    CardItens(),
                    CardItens(),
                    CardItens(),
                    CardItens(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class IconSelection extends StatelessWidget {
  IconSelection(
      {Key? key, required this.title, required this.icon, required this.onTap})
      : super(key: key);

  final String title;
  final Function() onTap;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Center(
                child: Icon(
                  icon,
                  size: 40,
                  color: Colors.orange,
                ),
              ),
            ),
            SizedBox(height: 5),
            Text(
              title,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

class CardItens extends StatelessWidget {
  const CardItens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.1,
      child: Card(
        shape: InputBorder.none,
        borderOnForeground: false,
        child: ListTile(
          title: Text(
            'Síndrome do túnel do Carpo',
            style: TextStyle(
                color: new Color(0xFF334856),
                fontSize: 16,
                fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
              'Essa doença é uma forma bastante comum de LER, provocada pela compressão do nervo ...'),
          trailing: Icon(
            Icons.navigate_next,
            size: 32,
            color: new Color(0xFF334856),
          ),
        ),
      ),
    );
  }
}
