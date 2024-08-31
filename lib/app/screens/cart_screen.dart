import 'package:come_shop/app/constants/app_colors.dart';
import 'package:come_shop/app/constants/app_textstyle.dart';
import 'package:come_shop/app/screens/checkout_screen.dart';
import 'package:come_shop/app/utils/currency.dart';
import 'package:come_shop/app/widgets/buttons.dart';
import 'package:come_shop/app/widgets/category_item.dart';
import 'package:come_shop/app/widgets/custom_texts.dart';
import 'package:come_shop/app/widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CartScreen extends ConsumerStatefulWidget {
  const CartScreen({super.key});
  static const routeName = '/cartScreen';

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _CartScreenState();
}

class _CartScreenState extends ConsumerState<CartScreen> {
  int bla = 3;

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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomBackButton(),
                  boldText('Cart', fontSize: 20),
                  Container(),
                ],
              ),
              Gap(30.h),
              Align(
                alignment: Alignment.centerRight,
                child: mediumText(
                  'Remove all',
                  fontSize: 14,
                ),
              ),
              SizedBox(
                height: bla > 2 ? 0.7.sh : 0.4.sh,
                child: ListView.builder(
                    itemCount: 15,
                    itemBuilder: (context, index) {
                      // itemValue = cartItems.values.toList()[index].quantity;
                      return CartScreenItem(
                        onDecrease: () {
                          // if (itemValue == 1) {
                          //   return;
                          // }
                          // itemValue =
                          //     cartItems.values.toList()[index].quantity;
                          // setState(() {
                          //   itemValue--;
                          // });

                          // cart.removeSingleItem(
                          //   '${cartItems.values.toList()[index].id}',
                          // );
                        },
                        onIncrease: () {
                          // itemValue =
                          //     cartItems.values.toList()[index].quantity;
                          // if (cartItems.values.toList()[index].quantity ==
                          //     0) {
                          //   return;
                          // }
                          // setState(() {
                          //   itemValue++;
                          // });

                          // cart.addToCart(
                          //   '${cartItems.values.toList()[index].id}',
                          //   '${cartItems.values.toList()[index].name}',
                          //   itemValue,
                          //   cartItems.values.toList()[index].color,
                          //   'http://api.timbu.cloud/images/${cartItems.values.toList()[index].imageUrl}',
                          //   cartItems.values.toList()[index].size,
                          //   cartItems.values.toList()[index].price,
                          // );
                        },
                        onRemove: () {
                          // itemValue =
                          //     cartItems.values.toList()[index].quantity;
                          // setState(() {
                          //   cart.removeItem(
                          //       '${cartItems.values.toList()[index].id}');
                          // });
                        },
                        name: 'Men\'s Harrington Jacket',
                        color: AppColor.primaryColor,
                        imageUrl: '',
                        price: 567.4,
                        quantity: 3,
                        size: 5,
                      );
                    }),
              ),
              Gap(15.h),
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
              Gap(15.h),
              MyTextField(
                prefixIcon: Padding(
                  padding: EdgeInsets.all(8.w),
                  child: SvgPicture.asset('assets/svg/coupon.svg'),
                ),
                hintText: 'Enter coupon code',
                suffixIcon: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 5.h,
                    horizontal: 10.w,
                  ),
                  child: CircleAvatar(
                    backgroundColor: AppColor.primaryColor,
                    radius: 25.r,
                    child: SvgPicture.asset(
                      'assets/svg/front.svg',
                      color: AppColor.whiteColor,
                    ),
                  ),
                ),
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
      ),
    );
  }
}
