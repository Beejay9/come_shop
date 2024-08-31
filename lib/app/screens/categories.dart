import 'package:come_shop/app/constants/app_colors.dart';
import 'package:come_shop/app/screens/products_screen.dart';
import 'package:come_shop/app/widgets/category_item.dart';
import 'package:come_shop/app/widgets/custom_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class CategoriesScreen extends StatelessWidget {
  CategoriesScreen({super.key});
  static const routeName = '/categoriesScreen';

  final List categories = ['Hoodies', 'Accessories', 'Shoes', 'Bags', 'Shorts'];

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
            CustomBackButton(),
            Gap(15.h),
            boldText('Shop by categories', fontSize: 20),
            Expanded(
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) => CategoryItem(
                  categoryName: categories[index],
                  imageUrl: '',
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      ProductsScreen.routeName,
                      arguments: categories[index],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
