import 'package:cached_network_image/cached_network_image.dart';
import 'package:come_shop/app/constants/app_colors.dart';
import 'package:come_shop/app/screens/product_details_screen.dart';
import 'package:come_shop/app/utils/currency.dart';
import 'package:come_shop/app/widgets/custom_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
    required this.categoryName,
    required this.imageUrl,
    required this.onTap,
  });

  final String categoryName;
  final String imageUrl;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(10.w),
        margin: EdgeInsets.only(bottom: 10.h),
        decoration: BoxDecoration(
          color: AppColor.greyColor,
          borderRadius: BorderRadius.circular(10.w),
        ),
        height: 65.h,
        width: 1.sw,
        child: Row(
          children: [
            Image.asset('assets/images/Ellipse 5.png'),
            Gap(10.w),
            regularText(
              categoryName,
              textColor: AppColor.mainTextColor,
            )
          ],
        ),
      ),
    );
  }
}

class HomeScreenItem extends StatefulWidget {
  const HomeScreenItem({
    super.key,
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.category,
    required this.price,
  });
  final String id;
  final String name;
  final String imageUrl;
  final String category;
  final double price;

  @override
  State<HomeScreenItem> createState() => _HomeScreenItemState();
}

class _HomeScreenItemState extends State<HomeScreenItem> {
  bool isFav = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, ProductDetailsScreen.routeName);
      },
      child: Container(
        // height: 470.h,
        margin: EdgeInsets.only(bottom: 5.w),
        padding: EdgeInsets.symmetric(
          vertical: 10.h,
          // horizontal: 10.w,
        ),
        width: 0.47.sw,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 180.h,
              decoration: BoxDecoration(
                color: AppColor.greyColor,
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Stack(
                children: [
                  Positioned(
                    right: 10,
                    top: 10,
                    child: GestureDetector(
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
                  ),
                  Center(
                    child: Image.asset(
                      'assets/images/Rectangle 8.png',
                      height: 120.h,
                    ),
                  ),
                ],
              ),
            ),
            Gap(7.h),
            // Text(
            //   category,
            //   style: AppTextStyle.regular(
            //       color: AppColor.mainTextColor, fontSize: 12.sp),
            // ),
            regularText(
              widget.name,
              textColor: AppColor.mainTextColor,
            ),
            Gap(3.h),
            Row(
              children: [
                // SvgPicture.asset(
                //   'assets/svg/rating.svg',
                // ),
                Gap(2.w),
                // Text(
                //   '$rating ($unitSold)',
                //   style: AppTextStyle.regular(
                //     color: AppColor.mainTextColor,
                //     fontSize: 12.sp,
                //   ),
                // ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    boldText(
                      '\$${widget.price}',
                      fontSize: 12,
                    ),
                    // if (isPromo)
                    //   Stack(
                    //     children: [
                    //       Text(
                    //         '$getCurrency ${price + 5000}',
                    //         style: AppTextStyle.medium(
                    //           color: AppColors.subTextColor,
                    //           fontSize: 14.sp,
                    //         ),
                    //       ),
                    //       // horizo
                    //     ],
                    //   ),
                  ],
                ),
                // Container(
                //   padding:
                //       EdgeInsets.symmetric(vertical: 10.r, horizontal: 15.r),
                //   decoration: BoxDecoration(
                //     // shape: BoxShape.circle,
                //     borderRadius: BorderRadius.circular(10.r),
                //     color: AppColor.primaryColor.withOpacity(0.12),
                //   ),
                //   child: SvgPicture.asset(
                //     'assets/svg/basket.svg',
                //     height: 23.h,
                //     width: 23.h,
                //   ),
                // ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class NotificationItem extends StatelessWidget {
  const NotificationItem({
    super.key,
    required this.notification,
  });

  final String notification;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: EdgeInsets.all(10.w),
        margin: EdgeInsets.only(bottom: 10.h),
        decoration: BoxDecoration(
          color: AppColor.greyColor,
          borderRadius: BorderRadius.circular(10.w),
        ),
        width: 1.sw,
        child: Row(
          children: [
            SvgPicture.asset('/svg/notificationbing.svg'),
            Gap(15.w),
            SizedBox(
              width: 0.77.sw,
              child: regularText(
                notification,
                textColor: AppColor.mainTextColor,
                maxLines: 2,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class OrderListItem extends StatelessWidget {
  const OrderListItem({
    super.key,
    required this.orderName,
    required this.orderItems,
    this.isOderDetails = false,
  });

  final String orderName;
  final int orderItems;
  final bool isOderDetails;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 10.w,
          vertical: isOderDetails ? 15.w : 10.w,
        ),
        margin: EdgeInsets.only(bottom: 10.w),
        decoration: BoxDecoration(
          color: AppColor.greyColor,
          borderRadius: BorderRadius.circular(10.w),
        ),
        // height: 72.h,
        width: 1.sw,
        child: Row(
          children: [
            SvgPicture.asset('assets/svg/tag.svg'),
            Gap(15.w),
            isOderDetails
                ? regularText(
                    '$orderItems items',
                    textColor: AppColor.mainTextColor,
                  )
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      mediumText(
                        orderName,
                        textColor: AppColor.mainTextColor,
                        fontSize: 16,
                      ),
                      regularText(
                        '$orderItems items',
                        textColor: AppColor.mainTextColor.withOpacity(0.5),
                      ),
                    ],
                  ),
            const Spacer(),
            isOderDetails
                ? mediumText(
                    'View all',
                    textColor: AppColor.primaryColor,
                    fontSize: 12,
                  )
                : SvgPicture.asset('assets/svg/front.svg'),
          ],
        ),
      ),
    );
  }
}

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: CircleAvatar(
        backgroundColor: AppColor.greyColor,
        // radius: 15.w,
        child: SvgPicture.asset('assets/svg/back.svg'),
      ),
    );
  }
}

class CartScreenItem extends StatelessWidget {
  const CartScreenItem({
    super.key,
    required this.name,
    required this.color,
    required this.imageUrl,
    required this.price,
    required this.quantity,
    required this.size,
    required this.onDecrease,
    required this.onIncrease,
    required this.onRemove,
    this.isCheckout = false,
  });
  final String name;
  final Color color;
  final String imageUrl;
  final double price;
  final int quantity;
  final int size;
  final bool isCheckout;
  final void Function()? onDecrease;
  final void Function()? onIncrease;
  final void Function()? onRemove;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1.sw,
      margin: EdgeInsets.only(top: 10.h),
      padding: EdgeInsets.all(5.w),
      decoration: BoxDecoration(
        color: AppColor.greyColor,
        borderRadius: BorderRadius.circular(10.w),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 100.h,
            // width: 0.28.sw,
            // padding: EdgeInsets.all(5.w),
            // decoration: BoxDecoration(
            //   borderRadius: BorderRadius.circular(
            //     10.r,
            //   ),
            //   // color: AppColor.imageBackgroundColor,
            // ),
            child: Image.asset(
              'assets/images/Rectangle 8.png',
            ),
          ),
          Gap(10.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gap(12.h),
              SizedBox(
                width: 0.5.sw,
                child: regularText(
                  name,
                  textColor: AppColor.mainTextColor,
                  // style: AppTextStyle.medium(
                  //   color: AppColors.mainTextColor,
                  //   fontSize: 16.sp,
                  // ),
                  // overflow: TextOverflow.ellipsis,
                ),
              ),
              Gap(10.h),
              Row(
                children: [
                  Container(
                    height: 20.h,
                    width: 20.h,
                    padding: EdgeInsets.symmetric(
                      horizontal: 13.r,
                      vertical: 8.h,
                    ),
                    margin: EdgeInsets.only(right: 5.w),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: AppColor.primaryColor,
                    ),
                    child: SvgPicture.asset('assets/svg/plus.svg'),
                  ),
                  boldText(
                    'Blue',
                    fontSize: 12,
                    // style: AppTextStyle.regular(
                    //   color: AppColors.subTextColor,
                    // ),
                  ),
                  Gap(7.w),
                  // SvgPicture.asset('assets/svg/line.svg'),
                  Gap(7.w),
                  regularText(
                    'Size',
                    textColor: AppColor.mainTextColor,
                    fontSize: 12,
                    // style: AppTextStyle.regular(
                    //     color: AppColors.mainTextColor, fontSize: 15),
                  ),
                  Gap(3.w),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 8.w,
                      vertical: 5.h,
                    ),
                    decoration: BoxDecoration(
                      color: AppColor.greyColor,
                      borderRadius: BorderRadius.circular(5.r),
                    ),
                    child: boldText(
                      '$size',
                      fontSize: 12,
                      // style: AppTextStyle.regular(
                      //   color: AppColors.mainTextColor,
                      //   fontSize: 15,
                      // ),
                    ),
                  ),
                ],
              ),
              Gap(10.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // width: 0.1.sw,
                    // padding: EdgeInsets.symmetric(
                    //   horizontal: isCheckout ? 10.w : 8.w,
                    //   vertical: isCheckout ? 5.h : 8.h,
                    // ),
                    decoration: BoxDecoration(
                      color: AppColor.greyColor,
                      borderRadius: BorderRadius.circular(5.r),
                    ),
                    child: Row(
                      // mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // if (!isCheckout)
                        GestureDetector(
                          onTap: onDecrease,
                          child: Container(
                            height: 25.h,
                            width: 25.h,
                            padding: EdgeInsets.symmetric(
                              horizontal: 13.r,
                              vertical: 8.h,
                            ),
                            margin: EdgeInsets.only(right: 3.w),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: AppColor.primaryColor,
                            ),
                            child: SvgPicture.asset('asset/svg/minus.svg'),
                          ),
                        ),
                        mediumText(
                          '$quantity',
                          textColor: AppColor.mainTextColor,
                          fontSize: 12,
                          // style: AppTextStyle.regular(
                          //   color: AppColors.descriptionColor,
                          //   fontSize: 14.sp,
                          // ),
                        ),
                        // if (!isCheckout)
                        GestureDetector(
                          onTap: onIncrease,
                          child: Container(
                            height: 25.h,
                            width: 25.h,
                            padding: EdgeInsets.symmetric(
                              horizontal: 13.r,
                              vertical: 8.h,
                            ),
                            margin: EdgeInsets.only(left: 3.w),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: AppColor.primaryColor,
                            ),
                            child: SvgPicture.asset('asset/svg/plus.svg'),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Gap(10.w),
                  // SvgPicture.asset('assets/svg/line.svg'),
                  Gap(7.w),
                ],
              )
            ],
          ),
          // if (!isCheckout)
          Spacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: onRemove,
                child: boldText(
                  'Remove',
                  textColor: Colors.red,
                  fontSize: 12,
                ),
              ),
              boldText(
                ' $getCurrency $price',
                // style: AppTextStyle.medium(
                textColor: AppColor.mainTextColor,
                fontSize: 16,
                //   fontSize: 16.sp,
                // ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
