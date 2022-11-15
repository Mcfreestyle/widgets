import 'package:flutter/material.dart';

class ImagesDemo extends StatelessWidget {
  const ImagesDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Images'),
        centerTitle: true,
        elevation: 0,
      ),
      body: const Center(
        child: SizedBox(
          height: 200,
          width: double.infinity,
          child: FadeInImage(
            placeholder: AssetImage('assets/loading.gif'),
            image: NetworkImage(
                'http://res.cloudinary.com/ybmedia/image/upload/c_crop,h_1113,w_1670,x_165,y_0/c_fill,f_auto,h_1200,q_auto,w_1200/v1/m/f/b/fbf42f2bf69a9869f5276e38bd1d849b46f4ce9b/allen-iverson-career-retrospective.jpg'),
          ),
        ),
      ),
    );
  }
}
