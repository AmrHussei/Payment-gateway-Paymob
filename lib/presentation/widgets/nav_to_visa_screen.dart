import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/constant.dart';
import '../screens/card_screen.dart';

class NavToVisaScreen extends StatelessWidget {
  const NavToVisaScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const VisaScreen()),
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 120.h,
            width: 120.h,
            child: Image.asset(
              AssetsData.visaImage,
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(
            height: 12.h,
          ),
          Text(
            'Pay by card',
            style: TextStyle(
                fontSize: 22.sp,
                color: MyColors.orangeColor,
                fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
