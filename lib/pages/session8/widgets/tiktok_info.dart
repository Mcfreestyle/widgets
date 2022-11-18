import 'package:flutter/material.dart';

class TikTokInfo extends StatelessWidget {
  final String? img;
  final String? username;

  const TikTokInfo({super.key, this.img, this.username});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.network(
          '$img',
          fit: BoxFit.fill,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text('$username'),
                      const Icon(
                        Icons.verified,
                        color: Colors.lightBlue,
                      )
                    ],
                  ),
                  const Text('Hello world')
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    children: [
                      const CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://cdn.pixabay.com/photo/2018/03/06/19/26/equine-3204312_960_720.jpg'),
                      ),
                      Column(
                        children: const [Icon(Icons.favorite), Text('42')],
                      ),
                      Column(
                        children: const [Icon(Icons.comment), Text('24')],
                      ),
                      Column(
                        children: const [Icon(Icons.bookmark), Text('40')],
                      ),
                      Column(
                        children: const [Icon(Icons.share), Text('36')],
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
