import 'package:flutter/material.dart';
import 'package:widgets/pages/session8/screens/instagram/reel_info.dart';

class ReelBody extends StatelessWidget {
  const ReelBody({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();

    final List<dynamic> data = [
      {
        'content':
            'https://cdn.pixabay.com/photo/2017/12/08/12/25/berlin-3005717_960_720.jpg',
        'username': 'User 1',
        'profileImg':
            'https://cdn.pixabay.com/photo/2014/11/29/19/33/bald-eagle-550804_960_720.jpg',
        'description': 'Lorem ipsum'
      },
      {
        'content':
            'https://cdn.pixabay.com/photo/2014/11/03/10/44/camera-514992_960_720.jpg',
        'username': 'User 2',
        'profileImg':
            'https://cdn.pixabay.com/photo/2016/11/21/14/53/man-1845814_960_720.jpg',
        'description': 'Lorem ipsum'
      },
      {
        'content':
            'https://cdn.pixabay.com/photo/2017/06/29/06/06/dog-2453179_960_720.jpg',
        'username': 'User 3',
        'profileImg':
            'https://cdn.pixabay.com/photo/2014/10/06/17/30/child-476507_960_720.jpg',
        'description': 'Lorem ipsum'
      },
      {
        'content':
            'https://cdn.pixabay.com/photo/2017/06/22/09/29/istanbul-2430072_960_720.jpg',
        'username': 'User 4',
        'profileImg':
            'https://cdn.pixabay.com/photo/2017/07/10/11/28/bulldog-2489829_960_720.jpg',
        'description': 'Lorem ipsum'
      },
      {
        'content':
            'https://cdn.pixabay.com/photo/2017/10/05/22/16/katz-2821316_960_720.jpg',
        'username': 'User 5',
        'profileImg':
            'https://cdn.pixabay.com/photo/2017/04/06/19/34/girl-2209147_960_720.jpg',
        'description': 'Lorem ipsum'
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
                return ReelInfo(
                  content: itemInfo['content'],
                  username: itemInfo['username'],
                  profileImg: itemInfo['profileImg'],
                  description: itemInfo['description'],
                );
              }),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Reels',
                  style: TextStyle(fontSize: 25),
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.camera_alt_outlined,
                      size: 30,
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
