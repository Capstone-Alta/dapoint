import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

import '../../../src/image_carrousel_home.dart';

class Promotion extends StatelessWidget {
  const Promotion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 150,
      color: Colors.grey,
      child: Swiper(
        itemBuilder: (BuildContext context, int index) {
          final image = images[index];
          return Image.asset(
            image,
            fit: BoxFit.fill,
          );
        },
        itemCount: images.length,
        pagination: const SwiperPagination(),
        control: const SwiperControl(),
      ),
    );
  }
}
