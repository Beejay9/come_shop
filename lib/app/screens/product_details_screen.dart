import 'package:carousel_slider/carousel_slider.dart';
import 'package:come_shop/app/constants/app_colors.dart';
import 'package:come_shop/app/widgets/buttons.dart';
import 'package:come_shop/app/widgets/category_item.dart';
import 'package:come_shop/app/widgets/custom_texts.dart';
import 'package:come_shop/app/widgets/dialogs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProductDetailsScreen extends ConsumerStatefulWidget {
  const ProductDetailsScreen({super.key});
  static const routeName = '/productDetailsScreen';

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends ConsumerState<ProductDetailsScreen> {
  final List<String> image = [
    'assets/images/Rectangle 8.png',
    'assets/images/Rectangle 8.png',
    'assets/images/Rectangle 8.png',
    'assets/images/Rectangle 8.png',
    'assets/images/Rectangle 8.png',
    'assets/images/Rectangle 8.png',
  ];

  final List<String> sizes = [
    'S',
    'M',
    'L',
    'XL',
    'XXL',
  ];

  final List<String> colors = [
    'Orange',
    'Black',
    'Red',
    'Yellow',
    'Blue'
  ];

  bool isFav = false;

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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gap(50.h),
              CustomBackButton(),
              Gap(20.h),
              CarouselSlider(
                items: image
                    .map(
                      (image) => Container(
                        // height: 5.h,
                        width: 0.7.sw,
                        padding: EdgeInsets.all(30.w),
                        decoration: BoxDecoration(color: AppColor.greyColor),
                        child: Image.asset(
                          image,
                          fit: BoxFit.contain,
                        ),
                      ),
                    )
                    .toList(),
                options: CarouselOptions(
                  height: 200,
                  // aspectRatio: 16 / 9,
                  // viewportFraction: 1,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  enlargeFactor: 0.3,
                  // onPageChanged: callbackFunction,
                  scrollDirection: Axis.horizontal,
                ),
              ),

              // CarouselSlider.builder(
              //   itemCount: 4,
              //   itemBuilder: (context, itemIndex, pageViewIndex) => Container(
              //     width: 0.4.sw,
              //     // height: ,
              //     child: Image.asset(
              //       'assets/images/Rectangle 8.png',
              //       fit: BoxFit.cover
              //       ,
              //     ),
              //   ),
              //   options: CarouselOptions(
              //     // height: 300.h,
              //     aspectRatio: 16 / 9,

              //     // viewportFraction: 0.8,
              //     initialPage: 0,
              //     enableInfiniteScroll: true,
              //     reverse: false,
              //     autoPlay: true,
              //     autoPlayInterval: Duration(seconds: 3),
              //     autoPlayAnimationDuration: Duration(milliseconds: 800),
              //     autoPlayCurve: Curves.fastOutSlowIn,
              //     enlargeCenterPage: true,
              //     enlargeFactor: 0.3,
              //     // onPageChanged: callbackFunction,
              //     scrollDirection: Axis.horizontal,
              //   ),
              // ),

              Gap(10.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  boldText(
                    'Men\'s Harrington Jacket',
                    fontSize: 16,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isFav = !isFav;
                      });
                    },
                    child: SvgPicture.asset(
                      !isFav
                          ? 'assets/svg/favourite.svg'
                          : 'assets/svg/heart.svg',
                    ),
                  ),
                ],
              ),
              Gap(10.h),
              boldText(
                '\$567',
                fontSize: 16,
                textColor: AppColor.primaryColor,
              ),
              Gap(15.h),
              CustomButton(
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    isDismissible: false,
                    builder: (context) => CustomBottomSheet(
                      bottomSheetList: sizes,
                      isFilter: false,
                      sheetTitle: 'Size',
                    ),
                  );
                },
                backgroundColor: AppColor.greyColor,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: Row(
                    children: [
                      mediumText(
                        'Size',
                        fontSize: 12,
                      ),
                      Spacer(),
                      boldText(
                        'S',
                        fontSize: 12,
                      ),
                      Gap(15.w),
                      SvgPicture.asset(
                        'assets/svg/down.svg',
                      ),
                    ],
                  ),
                ),
              ),
              Gap(10.h),
              CustomButton(
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    isDismissible: false,
                    builder: (context) => CustomBottomSheet(
                      bottomSheetList: colors,
                      isFilter: false,
                      sheetTitle: 'Colour',
                    ),
                  );
                },
                backgroundColor: AppColor.greyColor,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: Row(
                    children: [
                      mediumText(
                        'Colour',
                        fontSize: 12,
                      ),
                      Spacer(),
                      CircleAvatar(
                        radius: 10.r,
                        backgroundColor: AppColor.primaryColor,
                      ),
                      Gap(15.w),
                      SvgPicture.asset(
                        'assets/svg/down.svg',
                      ),
                    ],
                  ),
                ),
              ),
              Gap(10.h),
              CustomButton(
                onPressed: () {},
                backgroundColor: AppColor.greyColor,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: Row(
                    children: [
                      mediumText(
                        'Size',
                        fontSize: 12,
                      ),
                      Spacer(),
                      CircleAvatar(
                        radius: 20.r,
                        backgroundColor: AppColor.primaryColor,
                        child: SvgPicture.asset(
                          'assets/svg/minus.svg',
                        ),
                      ),
                      Gap(10.w),
                      mediumText(
                        '3',
                        fontSize: 16,
                      ),
                      Gap(10.w),
                      CircleAvatar(
                        radius: 20.r,
                        backgroundColor: AppColor.primaryColor,
                        child: SvgPicture.asset(
                          'assets/svg/plus.svg',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Gap(15.h),
              regularText(
                'Built for life and made to last, this'
                ' full-zip corduroy jacket is part of '
                'our Nike Life collection. The '
                'spacious'
                ' fit gives you plenty of room to layer '
                'underneath, while the'
                ' soft corduroy keeps it casual and timeless.',
                textColor: AppColor.mainTextColor.withOpacity(0.5),
                maxLines: 5,
              ),
              Gap(15.h),
              boldText(
                'Shipping & Returns',
                fontSize: 14,
              ),
              Gap(5.h),
              regularText(
                'Free standard shipping and free 60-day returns',
                textColor: AppColor.mainTextColor.withOpacity(0.5),
              ),
              Gap(15.h),
              CustomButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    boldText(
                      '\$567',
                      fontSize: 16,
                      textColor: AppColor.whiteColor,
                    ),
                    mediumText(
                      'Add to bag',
                      fontSize: 14,
                      textColor: AppColor.whiteColor,
                    )
                  ],
                ),
              ),
              Gap(15.h),
            ],
          ),
        ),
      ),
    );
  }
}
