import 'package:come_shop/app/constants/app_colors.dart';
import 'package:come_shop/app/widgets/buttons.dart';
import 'package:come_shop/app/widgets/custom_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

// void bottomSheet(BuildContext context) {
//   showBottomSheet(context: context, builder: (context) {},);
// }

class CustomBottomSheet extends StatefulWidget {
  const CustomBottomSheet({
    super.key,
    required this.bottomSheetList,
    required this.isFilter,
    required this.sheetTitle,
  });
  final List<String> bottomSheetList;
  final bool isFilter;
  final String sheetTitle;

  @override
  State<CustomBottomSheet> createState() => _CustomBottomSheetState();
}

class _CustomBottomSheetState extends State<CustomBottomSheet> {
  dynamic isSelected;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 0.5.sh,
      width: 1.sw,
      padding: EdgeInsets.only(
        left: 15.w,
        right: 15.w,
        top: 15.w,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16.w),
          topRight: Radius.circular(16.w),
        ),
        color: AppColor.whiteColor,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              widget.isFilter
                  ? regularText(
                      'Clear',
                      textColor: AppColor.mainTextColor,
                      fontSize: 16.sp,
                    )
                  : Container(),
              boldText(widget.sheetTitle, fontSize: 24),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: SvgPicture.asset('assets/svg/x.svg'),
              ),
            ],
          ),
          Gap(10.h),
          Expanded(
            child: ListView(
              children: widget.bottomSheetList
                  .map(
                    (bottomItem) => Padding(
                      padding: EdgeInsets.only(bottom: 20.h),
                      child: CustomButton(
                        backgroundColor: isSelected == bottomItem
                            ? AppColor.primaryColor
                            : AppColor.greyColor,
                        child: Padding(
                          padding: EdgeInsets.all(10.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              mediumText(
                                bottomItem,
                                textColor: isSelected == bottomItem
                                    ? AppColor.whiteColor
                                    : AppColor.mainTextColor,
                                fontSize: 12,
                              ),
                              if (isSelected == bottomItem)
                                Icon(
                                  Icons.check,
                                )
                            ],
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            isSelected = bottomItem;
                          });
                        },
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
