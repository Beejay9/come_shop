import 'package:come_shop/app/constants/app_colors.dart';
import 'package:come_shop/app/screens/navbar.dart';
import 'package:come_shop/app/widgets/buttons.dart';
import 'package:come_shop/app/widgets/custom_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AboutScreen extends ConsumerStatefulWidget {
  const AboutScreen({super.key});
  static const routeName = '/aboutScreen';

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AboutScreenState();
}

class _AboutScreenState extends ConsumerState<AboutScreen> {
  String? selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.whiteColor,
      body: Container(
        height: 1.sh,
        width: 1.sw,
        padding: EdgeInsets.only(
          left: 15.w,
          right: 15.w,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(50.h),
            boldText('Tell us about yourself'),
            Gap(100.h),
            regularText('Who do you shop for?'),
            Gap(15.h),
            Row(
              children: [
                CustomButton(
                  onPressed: () {
                    setState(() {
                      selectedGender = 'Men';
                    });
                  },
                  width: 0.4.sw,
                  backgroundColor: selectedGender == 'Men'
                      ? AppColor.primaryColor
                      : AppColor.greyColor,
                  child: buttonText(
                    'Men',
                    color: selectedGender == 'Men'
                        ? AppColor.whiteColor
                        : AppColor.mainTextColor,
                  ),
                ),
                Gap(15.w),
                CustomButton(
                  onPressed: () {
                    setState(() {
                      selectedGender = 'Women';
                    });
                  },
                  width: 0.4.sw,
                  backgroundColor: selectedGender == 'Women'
                      ? AppColor.primaryColor
                      : AppColor.greyColor,
                  child: buttonText(
                    'Women',
                    color: selectedGender == 'Women'
                        ? AppColor.whiteColor
                        : AppColor.mainTextColor,
                  ),
                ),
              ],
            ),
            Gap(50.h),
            regularText('what is your age range?'),
            Gap(15.h),
            CustomButton(
              onPressed: () {},
              backgroundColor: AppColor.greyColor,
              child: Padding(
                padding:  EdgeInsets.all(5.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    regularText('Age range'),
                    SvgPicture.asset('assets/svg/down.svg'),
                  ],
                ),
              ),
            ),
            Gap(30.h),
            CustomButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, NavBar.routeName);
              },
              child: buttonText('Finish'),
            ),
          ],
        ),
      ),
    );
  }
}
