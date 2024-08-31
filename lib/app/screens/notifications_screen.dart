import 'package:come_shop/app/constants/app_colors.dart';
import 'package:come_shop/app/widgets/category_item.dart';
import 'package:come_shop/app/widgets/custom_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

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
          children: [
            Gap(50.h),
            boldText(
              'Notifications',
              fontSize: 20,
            ),
            Gap(15.h),
            Expanded(
              child: ListView.builder(
                itemCount: 9,
                itemBuilder: (context, index) => NotificationItem(
                  notification: 'Gilbert, Thank you for shopping with us. We have canceled order #24568.',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
