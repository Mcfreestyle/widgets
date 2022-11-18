import 'package:flutter/material.dart';

class ReelInfo extends StatelessWidget {
  final String? content;
  final String? username;
  final String? profileImg;
  final String? description;

  const ReelInfo(
      {super.key,
      this.content,
      this.username,
      this.profileImg,
      this.description});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.network(
          '$content',
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
                      CircleAvatar(
                        backgroundImage: NetworkImage('$profileImg'),
                      ),
                      const SizedBox(width: 10),
                      Text('$username'),
                      const SizedBox(width: 10),
                      OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: const Text('Follow'),
                      )
                    ],
                  ),
                  Text('$description')
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    children: [
                      Column(
                        children: const [Icon(Icons.favorite), Text('42')],
                      ),
                      const SizedBox(height: 10),
                      Column(
                        children: const [Icon(Icons.comment), Text('24')],
                      ),
                      const SizedBox(height: 10),
                      Column(
                        children: const [Icon(Icons.bookmark)],
                      ),
                      const SizedBox(height: 10),
                      Column(
                        children: const [Icon(Icons.more_vert)],
                      ),
                      const SizedBox(height: 10),
                      CircleAvatar(
                        backgroundImage: NetworkImage('$profileImg'),
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
