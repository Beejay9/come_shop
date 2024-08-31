import 'package:come_shop/app/constants/app_colors.dart';
import 'package:come_shop/app/widgets/buttons.dart';
import 'package:come_shop/app/widgets/custom_texts.dart';
import 'package:come_shop/app/widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SignupScreen extends ConsumerStatefulWidget {
  const SignupScreen({super.key});
  static const routeName = '/signupScreen';

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SignupScreenState();
}

class _SignupScreenState extends ConsumerState<SignupScreen> {
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
              const BackButton(),
              boldText(
                'Create account',
                fontSize: 30,
              ),
              Gap(30.h),
              MyTextField(
                hintText: 'firstname',
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your firstname';
                  }
                  return null;
                },
              ),
              Gap(20.h),
              MyTextField(
                hintText: 'lastname',
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your lastname';
                  }
                  return null;
                },
              ),
              Gap(20.h),
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
              CustomButton(
                child: buttonText('Continue'),
                onPressed: () {},
              ),
              Gap(15.h),
              regularText('Already have an account? Sign Up'),
              
            ],
          ),
        ),
      ),
    );
  }
}