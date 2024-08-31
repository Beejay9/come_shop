import 'package:come_shop/app/constants/app_colors.dart';
import 'package:come_shop/app/screens/cart_screen.dart';
import 'package:come_shop/app/screens/categories.dart';
import 'package:come_shop/app/screens/products_screen.dart';
import 'package:come_shop/app/widgets/buttons.dart';
import 'package:come_shop/app/widgets/category_item.dart';
import 'package:come_shop/app/widgets/custom_texts.dart';
import 'package:come_shop/app/widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});
  static const routeName = '/homeScreen';

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
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
            mainAxisSize: MainAxisSize.min,
            children: [
              Gap(20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    backgroundImage:
                        AssetImage('assets/images/Rectangle 8.png'),
                  ),
                  CustomButton(
                    onPressed: () {},
                    width: 0.18.sw,
                    foregroundColor: AppColor.mainTextColor,
                    backgroundColor: AppColor.greyColor,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        regularText('Men'),
                        SvgPicture.asset('assets/svg/down.svg'),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        CartScreen.routeName,
                      );
                    },
                    child: CircleAvatar(
                      backgroundColor: AppColor.primaryColor,
                      child: SvgPicture.asset('/svg/bag2.svg'),
                    ),
                  )
                ],
              ),
              Gap(10.h),
              MyTextField(
                hintText: 'Search',
                prefixIcon: Padding(
                  padding: EdgeInsets.only(left: 10.w, right: 10.w),
                  child: SvgPicture.asset('assets/svg/search.svg'),
                ),
              ),
              Gap(15.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  boldText('Categories', fontSize: 12),
                  GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          CategoriesScreen.routeName,
                        );
                      },
                      child: regularText('See all')),
                ],
              ),
              Gap(15.h),
              Wrap(
                children: [
                  Image.asset('assets/images/Ellipse 5 (1).png'),
                  Image.asset('assets/images/Ellipse 5 (2).png'),
                  Image.asset('assets/images/Ellipse 5 (3).png'),
                  Image.asset('assets/images/Ellipse 5.png'),
                  Image.asset('assets/images/Ellipse 5.png'),
                ],
              ),
              Gap(15.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  boldText('Top selling', fontSize: 12),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        ProductsScreen.routeName,
                        arguments: 'Top selling',
                      );
                    },
                    child: regularText('See all'),
                  ),
                ],
              ),
              Gap(15.h),
              SizedBox(
                height: 300.h,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) => Padding(
                    padding:  EdgeInsets.only(right: 10.w),
                    child: HomeScreenItem(
                      id: '88',
                      name: 'Mohair Blouse',
                      imageUrl: 'imageUrl',
                      category: 'category',
                      price: 5667.8,
                    ),
                  ),
                ),
              ),
              Gap(15.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  boldText(
                    'New in',
                    fontSize: 12,
                    textColor: AppColor.primaryColor,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        ProductsScreen.routeName,
                        arguments: 'New In',
                      );
                    },
                    child: regularText('See all'),
                  ),
                ],
              ),
              Gap(15.h),
              SizedBox(
                height: 300.h,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) => Padding(
                   padding:  EdgeInsets.only(right: 10.w),
                    child: HomeScreenItem(
                      id: '88',
                      name: 'Mohair Blouse',
                      imageUrl: 'imageUrl',
                      category: 'category',
                      price: 5667.8,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
