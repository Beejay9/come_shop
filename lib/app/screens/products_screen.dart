import 'package:come_shop/app/constants/app_colors.dart';
import 'package:come_shop/app/widgets/category_item.dart';
import 'package:come_shop/app/widgets/custom_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});
  static const routeName = 'productsScreen';

  @override
  Widget build(BuildContext context) {
    final categoryName = ModalRoute.of(context)?.settings.arguments;
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
            CustomBackButton(),
            Gap(10.h),
            boldText('$categoryName', fontSize: 20),
            // Gap(15.h),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 2/2.9.h,
                  crossAxisSpacing: 10.w,
                ),
                itemBuilder: (context, index) => HomeScreenItem(
                  id: '88',
                  name: 'Mohair Blouse',
                  imageUrl: 'imageUrl',
                  category: 'category',
                  price: 5667.8,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
