import 'package:come_shop/app/constants/app_colors.dart';
import 'package:come_shop/app/widgets/category_item.dart';
import 'package:come_shop/app/widgets/custom_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class OrderDetailsScreen extends StatelessWidget {
  const OrderDetailsScreen({super.key});
  static const routeName = '/orderDetailsScreen';

  @override
  Widget build(BuildContext context) {
    final orderName = ModalRoute.of(context)?.settings.arguments;
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
                boldText('$orderName', fontSize: 20),
                Container(),
              ],
            ),
            Gap(15.h),
            statusDetails(
              status: 'Order placed',
              statusDate: '28 May',
              isConfirmed: true,
            ),
            statusDetails(
              status: 'Order confirmed',
              statusDate: '28 May',
              isConfirmed: true,
            ),
            statusDetails(
              status: 'Shipped',
              statusDate: '28 May',
              isConfirmed: true,
            ),
            statusDetails(
              status: 'Delivered',
              statusDate: '28 May',
              isConfirmed: false,
            ),
            mediumText(
              'Order items',
              fontSize: 14,
            ),
            Gap(10.h),
            OrderListItem(
              orderName: '$orderName',
              orderItems: 4,
              isOderDetails: true,
            ),
            Gap(20.h),
            mediumText(
              'Order items',
              fontSize: 14,
            ),
            Gap(10.h),
            Container(
              padding: EdgeInsets.all(10.w),
              width: 1.sw,
              decoration: BoxDecoration(
                color: AppColor.greyColor,
                borderRadius: BorderRadius.circular(10.w),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  regularText('2715 Ash Dr. San Jose, South Dakota 83475'),
                  Gap(5.h),
                  regularText('121-224-7890'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget statusDetails({
  bool isConfirmed = false,
  required String status,
  required String statusDate,
}) {
  return Padding(
    padding: EdgeInsets.only(bottom: 30.h),
    child: Row(
      children: [
        CircleAvatar(
          radius: 10.w,
          backgroundColor:
              isConfirmed ? AppColor.primaryColor : AppColor.pendingColor,
          child: Icon(
            Icons.check,
            color: AppColor.whiteColor,
            size: 7.w,
          ),
        ),
        Gap(10.w),
        regularText(
          status,
          textColor: isConfirmed
              ? AppColor.mainTextColor
              : AppColor.mainTextColor.withOpacity(0.5),
        ),
        const Spacer(),
        regularText(
          statusDate,
          textColor: isConfirmed
              ? AppColor.mainTextColor
              : AppColor.mainTextColor.withOpacity(0.5),
        )
      ],
    ),
  );
}
