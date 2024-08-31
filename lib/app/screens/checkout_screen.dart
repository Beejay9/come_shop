import 'package:come_shop/app/constants/app_colors.dart';
import 'package:come_shop/app/utils/currency.dart';
import 'package:come_shop/app/widgets/buttons.dart';
import 'package:come_shop/app/widgets/category_item.dart';
import 'package:come_shop/app/widgets/custom_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CheckoutScreen extends ConsumerWidget {
  const CheckoutScreen({super.key});
  static const routeName = '/checkoutScreen';
  final hasDetails = true;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomBackButton(),
                boldText('Checkout', fontSize: 20),
                Container(),
              ],
            ),
            Gap(30.h),
            GestureDetector(
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 10.w,
                  vertical: hasDetails ? 15.w : 10.w,
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
                          'Shipping address',
                          textColor: AppColor.mainTextColor.withOpacity(0.5),
                        ),
                        regularText(
                          hasDetails
                              ? '2715 Ash Dr. San Jose, South Dakota 83475'
                              : 'Add shipping address',
                          textColor: AppColor.mainTextColor,
                          fontSize: 16,
                        ),
                      ],
                    ),
                    hasDetails
                        ? mediumText(
                            'Edit',
                            textColor: AppColor.primaryColor,
                            fontSize: 12,
                          )
                        : SvgPicture.asset('assets/svg/front.svg'),
                  ],
                ),
              ),
            ),
            // Gap(10.h),
            GestureDetector(
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 10.w,
                  vertical: hasDetails ? 15.w : 10.w,
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
                          'Payment details',
                          textColor: AppColor.mainTextColor.withOpacity(0.5),
                        ),
                        regularText(
                          hasDetails ? '**** 3456' : 'Add payment details',
                          textColor: AppColor.mainTextColor,
                          fontSize: 16,
                        ),
                      ],
                    ),
                    hasDetails
                        ? mediumText(
                            'Edit',
                            textColor: AppColor.primaryColor,
                            fontSize: 12,
                          )
                        : SvgPicture.asset('assets/svg/front.svg'),
                  ],
                ),
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                mediumText(
                  'Subtotal',
                  fontSize: 12,
                  textColor: AppColor.mainTextColor.withOpacity(0.5),
                ),
                mediumText(
                  '$getCurrency${60000}',
                  fontSize: 12,
                ),
              ],
            ),
            Gap(10.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                mediumText(
                  'Shipping',
                  fontSize: 12,
                  textColor: AppColor.mainTextColor.withOpacity(0.5),
                ),
                mediumText(
                  '$getCurrency${1200}',
                  fontSize: 12,
                ),
              ],
            ),
            Gap(10.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                mediumText(
                  'Total',
                  fontSize: 12,
                  textColor: AppColor.mainTextColor.withOpacity(0.5),
                ),
                boldText(
                  '$getCurrency${61200}',
                  fontSize: 12,
                ),
              ],
            ),
            Gap(20.h),
             CustomButton(
              onPressed: () {
                // if (cartItems.isEmpty) {
                //   return;
                // }
                Navigator.of(context).pushNamed(
                  CheckoutScreen.routeName,
                );
              },
              child: buttonText('Checkout'),
            ),
            Gap(20.h),
          ],
        ),
      ),
    );
  }
}
