import 'package:flutter/material.dart';

class ScreenTemplate extends StatelessWidget {
  final String? img;
  final String? title;
  final String? subtitle;
  final String? description;

  const ScreenTemplate({
    super.key,
    this.img,
    this.title,
    this.subtitle,
    this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: 250,
          child: Image.network(
            '$img',
            fit: BoxFit.fill,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '$title',
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text('$subtitle'),
                  ],
                ),
              ),
              const Icon(
                Icons.star,
                color: Colors.amber,
              ),
              const Text('42'),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Column(
                children: const [
                  Icon(
                    Icons.call,
                    color: Colors.lightBlue,
                  ),
                  Text(
                    'Call',
                    style: TextStyle(color: Colors.lightBlue),
                  )
                ],
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Column(
                children: const [
                  Icon(
                    Icons.message,
                    color: Colors.lightBlue,
                  ),
                  Text(
                    'Message',
                    style: TextStyle(color: Colors.lightBlue),
                  )
                ],
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Column(
                children: const [
                  Icon(
                    Icons.share,
                    color: Colors.lightBlue,
                  ),
                  Text(
                    'Share',
                    style: TextStyle(color: Colors.lightBlue),
                  )
                ],
              ),
              onPressed: () {},
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: SizedBox(
            child: Text('$description'),
          ),
        )
      ],
    );
  }
}
