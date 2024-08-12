import 'dart:async';

import 'package:e_commerce_with_firebase/app/ui/widgets/home/click_circle_banner.dart';
import 'package:e_commerce_with_firebase/app/utils/helper/app_assets.dart';
import 'package:e_commerce_with_firebase/app/utils/helper/spacing.dart';
import 'package:e_commerce_with_firebase/app/utils/theming/myText_style.dart';
import 'package:flutter/material.dart';

class BannerScrooler extends StatefulWidget {
  BannerScrooler({super.key});

  @override
  State<BannerScrooler> createState() => _BannerscroolerState();
}

class _BannerscroolerState extends State<BannerScrooler> {
  List<String> banner = [Assets.banner, Assets.banner, Assets.banner];
  late PageController _pageController;
  late Timer _timer;
  int _currentPage = 0;
  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _timer = Timer.periodic(const Duration(seconds: 3), (Timer timer) {
        setState(() {
          if (_currentPage < banner.length - 1) {
            _currentPage++;
          } else {
            _currentPage = 0;
          }
        });

        _pageController.animateToPage(
          _currentPage,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeIn,
        );
      });
    });

    super.initState();
  }

  @override
  void dispose() {
    _timer.cancel();
    _pageController.dispose();
    super.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        Container(
          width: double.infinity,
          height: size.height * .25,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: PageView.builder(
            controller: _pageController,
            itemCount: banner.length,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage(banner[index]), fit: BoxFit.fill)),
                child: Padding(
                  padding: EdgeInsets.all(size.width * .05),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: size.width * .5,
                        child: Text(
                          'Super Flash Sale',
                          style: MytextStyle.f30whitebold,
                        ),
                      ),
                      SizedBox(
                        width: size.width * .5,
                        child: Text(
                          '50% Off',
                          style: MytextStyle.f30whitebold,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
        verticalSpacing(.01, context),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            banner.length,
            (index) => ClickCircleBanner(
              isActive: _currentPage == index,
            ),
          ),
        ),
      ],
    );
  }
}
