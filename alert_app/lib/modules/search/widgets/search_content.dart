import 'package:alert_app/application/ui/alert_app_icons_icons.dart';
import 'package:alert_app/modules/search/stretches_card.dart';
import 'package:alert_app/modules/search/widgets/stretches_section.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchContent extends StatelessWidget {
  const SearchContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, left: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          StretchesSection(
            titleSection: 'Alongamentos',
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                StretchesCard(
                  title: 'Mãos',
                  icon: getMapIcon[1],
                  imageNetwork:
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRc8YYdS69o8A6eukzATkyjg_iaRMVsXs3AVA&usqp=CAU',
                  videoLink: '',
                ),
                StretchesCard(
                  title: 'Costas',
                  icon: getMapIcon[2],
                  imageNetwork:
                      'https://static.tuasaude.com/media/article/xg/hr/exercicios-de-alongamento_54865_l.jpg',
                  videoLink: '',
                ),
                StretchesCard(
                  title: 'Lombar',
                  icon: getMapIcon[3],
                  imageNetwork:
                      'https://clinicaseom.com.br/wp-content/uploads/2020/06/shutterstock_593167070.jpg',
                  videoLink: '',
                ),
                StretchesCard(
                  title: 'Outros',
                  icon: getMapIcon[4],
                  imageNetwork:
                      'https://pratiquefitness.com.br/blog/wp-content/uploads/2020/07/X-Alongamentos-Para-Come%C3%A7ar-Os-Treinos-Na-Academia-2.jpg',
                  videoLink: '',
                ),
              ],
            ),
          ),
          StretchesSection(
            titleSection: 'Rotinas             ',
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                StretchesCard(
                  title: 'Braços',
                  icon: Icons.data_saver_off,
                  imageNetwork:
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQGrzMcS4WzV2QNydPnVtQimkx5mXI-wEgpfw&usqp=CAU',
                  videoLink: '',
                ),
                StretchesCard(
                  title: 'Corpo todo',
                  icon: Icons.data_saver_off,
                  imageNetwork:
                      'https://wl-incrivel.cf.tsp.li/resize/728x/jpg/899/687/fb1f5152abbebb9f313cdc530b.jpg',
                  videoLink: '',
                ),
                StretchesCard(
                  title: 'Costas',
                  icon: Icons.data_saver_off,
                  imageNetwork:
                      'https://doctorfeet.com.br/wp-content/uploads/2020/04/Design-sem-nome-50.jpg',
                  videoLink: '',
                ),
                StretchesCard(
                  title: 'Inferiores',
                  icon: Icons.data_saver_off,
                  imageNetwork:
                      'https://pacefit.com.br/wp-content/uploads/2016/12/alongamento-pos-treino-como-fazer-corretamente.jpeg.webp',
                  videoLink: '',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
