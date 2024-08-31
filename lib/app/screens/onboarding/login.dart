import 'package:come_shop/app/constants/app_colors.dart';
import 'package:come_shop/app/screens/onboarding/about.dart';
import 'package:come_shop/app/screens/onboarding/forgot_password.dart';
import 'package:come_shop/app/screens/onboarding/signup.dart';
import 'package:come_shop/app/widgets/buttons.dart';
import 'package:come_shop/app/widgets/custom_texts.dart';
import 'package:come_shop/app/widgets/textfield.dart';
import 'package:come_shop/providers/product_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});
  static const routeName = '/loginScreen';

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  final formKey = GlobalKey<FormState>();

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
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gap(50.h),
              boldText(
                'Sign in',
                fontSize: 30,
              ),
              Gap(30.h),
              MyTextField(
                hintText: 'email',
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your email address';
                  }
                  return null;
                },
              ),
              Gap(20.h),
              MyTextField(
                hintText: 'password',
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your password';
                  }
                  return null;
                },
              ),
              Gap(25.h),
              Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                   onTap: () {
                  Navigator.pushNamed(
                    context,
                    ForgotPassword.routeName,
                  );
                },
                  child: regularText(
                    'Forgot Password?',
                  ),
                ),
              ),
              Gap(25.h),
              CustomButton(
                child: buttonText('Continue'),
                onPressed: () {
                  ref.read(productProvider.notifier).fetchCategoryProduct();
                  //  Navigator.pushNamed(
                  //   context,
                  //   AboutScreen.routeName,
                  // );
                },
              ),
              Gap(15.h),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    SignupScreen.routeName,
                  );
                },
                child: regularText('Don\'t have an account? Sign Up'),
              ),
              Gap(30.h),
              CustomButton(
                onPressed: () {},
                backgroundColor: AppColor.greyColor,
                child: mediumText('Continue with google'),
              ),
              Gap(15.h),
              CustomButton(
                onPressed: () {},
                backgroundColor: AppColor.greyColor,
                child: mediumText('Continue with apple'),
              ),
              Gap(15.h),
              CustomButton(
                onPressed: () {},
                backgroundColor: AppColor.greyColor,
                child: mediumText('Continue with facebook'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
