import 'dart:async';

import 'package:come_shop/app/constants/app_colors.dart';
import 'package:come_shop/app/screens/onboarding/login.dart';
import 'package:come_shop/app/widgets/custom_texts.dart';
import 'package:come_shop/providers/product_provider.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// import 'package:roomie/app/constants/app_colors.dart';
// import 'package:roomie/app/constants/app_text_style.dart';
// import 'package:roomie/app/screens/authentication/onboarding_screen.dart';
// import 'package:roomie/app/shared_prefs.dart';
// import 'package:roomie/providers/auth_provider.dart';

class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen> {
  @override
  void initState() {
    Timer(
      const Duration(seconds: 3),
      () async {
        // bool seenIntro = await Shared.getSeenIntro() ?? false;
        // if (seenIntro) {
        //   ref.read(authProvider.notifier).checkAuthStatus();
        // } else {
        //   await Shared.setSeenIntro(true);
        //   Get.offAll(() => const OnBoardingScreen());
        // }
      //  ref.read(productProvider.notifier).fetchProduct();
        Navigator.pushReplacementNamed(context, LoginScreen.routeName);
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
              color: AppColor.primaryColor,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              const SizedBox(
                height: 40,
              ),
              Expanded(
                flex: 4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Center(
                        child: boldText(
                      'ComeShop',
                      fontSize: 27,
                      textColor: AppColor.whiteColor,
                    )),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
