import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/constant.dart';

class RefCodeScreen extends StatelessWidget {
  const RefCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[900],
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 100.h,
              ),
              Text(
                'Your ref code is ',
                style: TextStyle(
                    fontSize: 22.sp,
                    color: MyColors.orangeColor,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15.h,
              ),
              Container(
                height: 40.h,
                width: 200.w,
                decoration:
                    BoxDecoration(color: MyColors.orangeColor.withOpacity(0.3)),
                child: Center(
                  child: Text(
                    ApiConstant.refCode,
                    style: TextStyle(
                        fontSize: 22.sp,
                        color: MyColors.dotsColor,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Text(
                'pay using this code by any payment machine ',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 18.sp,
                    color: MyColors.dotsColor,
                    fontWeight: FontWeight.bold),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.all(10.h),
                child: Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.sp),
                          ),
                          padding: EdgeInsets.symmetric(
                              vertical: 4.h, horizontal: 15.w),
                          backgroundColor: MyColors.orangeColor),
                      child: Text(
                        'Back',
                        style: TextStyle(
                            fontSize: 22.sp,
                            color: MyColors.dotsColor,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
