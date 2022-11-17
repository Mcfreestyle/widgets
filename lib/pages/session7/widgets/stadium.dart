import 'package:flutter/material.dart';

class Stadium extends StatelessWidget {
  final String? img;
  final String? title;
  final String? description;

  const Stadium({
    super.key,
    this.img,
    this.title,
    this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: 300,
          child: Image.network(
            '$img',
            fit: BoxFit.fill,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                '$title',
                style: const TextStyle(fontSize: 25),
              ),
              Text(
                '$description',
                style: const TextStyle(color: Colors.grey),
              ),
              const SizedBox(
                height: 10,
              ),
              MaterialButton(
                height: 50,
                minWidth: 200,
                color: const Color.fromARGB(255, 167, 44, 74),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: const Text(
                  'Mas detalles',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                onPressed: () {},
              ),
            ],
          ),
        )
      ],
    );
  }
}
