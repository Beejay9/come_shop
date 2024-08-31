import 'package:come_shop/app/constants/app_colors.dart';
import 'package:come_shop/app/screens/address_screen.dart';
import 'package:come_shop/app/screens/payment_details_screen.dart';
import 'package:come_shop/app/screens/wishlist_screen.dart';
import 'package:come_shop/app/widgets/custom_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

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
        child: SingleChildScrollView(
          child: Column(
            children: [
              Gap(50.h),
              CircleAvatar(
                radius: 40.w,
                backgroundImage: AssetImage(
                  'assets/images/Rectangle 8.png',
                ),
              ),
              Gap(15.h),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 10.w,
                  vertical: 10.w,
                ),
                margin: EdgeInsets.only(bottom: 10.w),
                decoration: BoxDecoration(
                  color: AppColor.greyColor,
                  borderRadius: BorderRadius.circular(10.w),
                ),
                // height: 72.h,
                width: 1.sw,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        mediumText(
                          'Timilehin Gbadebo',
                          // textColor: AppColor.primaryColor,
                          fontSize: 12,
                        ),
                        Gap(5.h),
                        regularText(
                          'timilehingbadebo@gmail.com',
                          textColor: AppColor.mainTextColor.withOpacity(
                            0.5,
                          ),
                        ),
                        Gap(5.h),
                        regularText(
                          '080800000000',
                          textColor: AppColor.mainTextColor.withOpacity(
                            0.5,
                          ),
                          fontSize: 12,
                        ),
                      ],
                    ),
                    mediumText(
                      'Edit',
                      textColor: AppColor.primaryColor,
                      fontSize: 12,
                    )
                  ],
                ),
              ),
              Gap(20.h),
              profileWidget('Address', AddressScreen.routeName),
              profileWidget('Wishlist', WishlistScreen.routeName),
              profileWidget('Payment', PaymentDetailsScreen.routeName),
              profileWidget('Help', ''),
              profileWidget('Support', ''),
              Gap(10.h),
              boldText(
                'Sign out',
                fontSize: 14,
                textColor: Colors.red,
              ),
              Gap(20.h),
            ],
          ),
        ),
      ),
    );
  }
}

Widget profileWidget(String title, String routeName) {
  return Container(
    padding: EdgeInsets.symmetric(
      horizontal: 10.w,
      vertical: 10.w,
    ),
    margin: EdgeInsets.only(bottom: 10.w),
    decoration: BoxDecoration(
      color: AppColor.greyColor,
      borderRadius: BorderRadius.circular(10.w),
    ),
    // height: 72.h,
    width: 1.sw,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            regularText(
              title,
              textColor: AppColor.mainTextColor,
            ),
          ],
        ),
        SvgPicture.asset('assets/svg/front.svg'),
      ],
    ),
  );
}
