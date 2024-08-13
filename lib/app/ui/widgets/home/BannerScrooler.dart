import 'package:card_swiper/card_swiper.dart';
import 'package:e_commerce_with_firebase/app/utils/helper/app_assets.dart';
import 'package:flutter/material.dart';

class Bannerscrooler extends StatefulWidget {
  Bannerscrooler({super.key});

  @override
  _BannerscroolerState createState() => _BannerscroolerState();
}

class _BannerscroolerState extends State<Bannerscrooler> {
  final List<String> banners = [
    Assets.banner,
    Assets.banner,
    Assets.banner,
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: size.height * .23,
          child: Swiper(
            itemBuilder: (BuildContext context, int index) {
              return ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  banners[index],
                  fit: BoxFit.cover,
                ),
              );
            },
            autoplay: true,
            itemCount: banners.length,
            scale: 0.9,
            onIndexChanged: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
        ),
      const  SizedBox(height: 10), 
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(banners.length, (index) {
            return Container(
              margin:const EdgeInsets.symmetric(horizontal: 4.0),
              width: 8.0,
              height: 8.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _currentIndex == index
                    ? Colors.red // Active color
                    : Colors.grey, // Inactive color
              ),
            );
          }),
        ),
      ],
    );
  }
}
