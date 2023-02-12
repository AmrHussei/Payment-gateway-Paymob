import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../business_logic/cubit/payment_cubit.dart';
import '../../core/constant.dart';

class GetRefCodeWidget extends StatelessWidget {
  const GetRefCodeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: () async {
          await BlocProvider.of<PaymentCubit>(context).getRefCode();
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 120.h,
              width: 120.h,
              child: Image.asset(
                AssetsData.refCodeImage,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              height: 8.h,
            ),
            Text(
              'Pay by RefCode',
              style: TextStyle(
                  fontSize: 22.sp,
                  color: MyColors.orangeColor,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
