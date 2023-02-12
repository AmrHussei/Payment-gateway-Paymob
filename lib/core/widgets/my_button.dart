import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:paymob/core/widgets/text_utils.dart';

import '../constant.dart';

class MyButton extends StatelessWidget {
  const MyButton({
    super.key,
    required this.onPressed,
    required this.text,
  });
  final Function() onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.sp)),
        padding: EdgeInsets.symmetric(vertical: 7.h, horizontal: 28.w),
        backgroundColor: MyColors.orangeColor,
      ),
      child: TextUtils(
        fontSize: 18.sp,
        fontWeight: FontWeight.w600,
        text: text,
        color: Colors.white,
        underLine: TextDecoration.none,
      ),
    );
  }
}
