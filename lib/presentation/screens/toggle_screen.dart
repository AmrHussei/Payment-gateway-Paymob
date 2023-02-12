import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:paymob/presentation/screens/card_screen.dart';
import 'package:paymob/presentation/screens/refCode_screen.dart';

import '../../business_logic/cubit/payment_cubit.dart';
import '../../core/constant.dart';
import '../widgets/get_refCode_widget.dart';

class ToggleScreen extends StatelessWidget {
  const ToggleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[900],
        body: BlocListener<PaymentCubit, PaymentState>(
          listener: (context, state) {
            if (state is GetRefCode) {
              return showProgressIndicator(context);
            } else if (state is GetRefCodeSucces) {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const RefCodeScreen();
                  },
                ),
              );
            }
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const VisaScreen()),
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
                ),
              ),
              SizedBox(
                height: 80.h,
              ),
              const GetRefCodeWidget()
            ],
          ),
        ),
      ),
    );
  }

  void showProgressIndicator(BuildContext context) {
    AlertDialog alertDialog = const AlertDialog(
      backgroundColor: Colors.transparent,
      elevation: 0,
      content: Center(
        child: CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(MyColors.orangeColor)),
      ),
    );
    showDialog(
      barrierColor: Colors.white.withOpacity(0),
      barrierDismissible: false,
      context: context,
      builder: ((context) {
        return alertDialog;
      }),
    );
  }
}
