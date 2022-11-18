import 'package:flutter/material.dart';
import 'package:widgets/pages/session8/widgets/tiktok_info.dart';

class TiktokHome extends StatelessWidget {
  const TiktokHome({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();

    final List<dynamic> data = [
      {
        'img':
            'https://cdn.pixabay.com/photo/2021/11/11/23/22/headphones-6787497_960_720.jpg',
        'username': 'Prueba 1'
      },
      {
        'img':
            'https://cdn.pixabay.com/photo/2016/08/29/19/31/window-1629018_960_720.jpg',
        'username': 'Prueba 2'
      },
      {
        'img':
            'https://cdn.pixabay.com/photo/2020/01/19/06/20/pin-up-girl-4776922_960_720.jpg',
        'username': 'Prueba 3'
      },
      {
        'img':
            'https://cdn.pixabay.com/photo/2017/08/10/07/23/porto-2619417_960_720.jpg',
        'username': 'Prueba 4'
      },
      {
        'img':
            'https://cdn.pixabay.com/photo/2020/12/01/03/50/twelve-apostles-5792930_960_720.jpg',
        'username': 'Prueba 5'
      }
    ];

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            PageView.builder(
              scrollDirection: Axis.vertical,
              itemCount: data.length,
              controller: controller,
              itemBuilder: ((context, index) {
                final itemInfo = data[index];
                return TikTokInfo(
                  img: itemInfo['img'],
                  username: itemInfo['username'],
                );
              }),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.tv),
                ),
                SizedBox(
                  width: 120,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text('Siguiendo'),
                      Text('Para ti'),
                    ],
                  ),
                ),
                IconButton(onPressed: () {}, icon: const Icon(Icons.search))
              ],
            )
          ],
        ),
      ),
    );
  }
}
