import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:paymob/presentation/screens/toggle_screen.dart';

import '../../business_logic/cubit/payment_cubit.dart';
import '../../core/widgets/auth_text_form_filed.dart';
import '../../core/widgets/my_button.dart';
import '../../core/widgets/my_app_bar.dart';

class ConfirmScreen extends StatelessWidget {
  ConfirmScreen({super.key});
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController priceController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: myAppBar(title: 'Payment integration '),
        body: BlocListener<PaymentCubit, PaymentState>(
          listener: (context, state) {
            if (state is OrderSuccess) {
              Navigator.of(context).push(MaterialPageRoute(builder: (cotext) {
                return const ToggleScreen();
              }));
            }
          },
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(20.h),
              child: Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 50.h),
                    SizedBox(height: 40.h),
                    //////////////////name
                    Row(
                      children: [
                        Expanded(
                          child: AuthTextFormFiled(
                            controller: firstNameController,
                            obscureText: false,
                            textInputType: TextInputType.text,
                            validator: (value) {
                              if (value.toString().isEmpty) {
                                return 'please enter your first name';
                              }
                              return null;
                            },
                            prefixIcon: Icon(
                              Icons.person,
                              color: Colors.grey[900],
                            ),
                            hintText: 'first name',
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Expanded(
                          child: AuthTextFormFiled(
                            controller: lastNameController,
                            obscureText: false,
                            textInputType: TextInputType.text,
                            validator: (value) {
                              if (value.toString().isEmpty) {
                                return 'please enter your last name';
                              }
                              return null;
                            },
                            prefixIcon: Icon(
                              Icons.person,
                              color: Colors.grey[900],
                            ),
                            hintText: 'last name',
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15.h),
                    //////////////////////Email
                    AuthTextFormFiled(
                      controller: emailController,
                      obscureText: false,
                      textInputType: TextInputType.text,
                      validator: (value) {
                        if (value.toString().isEmpty) {
                          return 'please enter your email';
                        }
                        return null;
                      },
                      prefixIcon: Icon(
                        Icons.email,
                        color: Colors.grey[900],
                      ),
                      hintText: 'Email',
                    ),
                    SizedBox(height: 15.h),
                    ////////////////////////phone
                    AuthTextFormFiled(
                      controller: phoneController,
                      obscureText: false,
                      textInputType: TextInputType.number,
                      validator: (value) {
                        if (value.toString().isEmpty) {
                          return 'please enter your phone';
                        }
                        return null;
                      },
                      prefixIcon: Icon(
                        Icons.phone,
                        color: Colors.grey[900],
                      ),
                      hintText: 'phone',
                    ),
                    SizedBox(height: 15.h),
                    ////////////////////Price
                    AuthTextFormFiled(
                      controller: priceController,
                      obscureText: false,
                      textInputType: TextInputType.number,
                      validator: (value) {
                        if (value.toString().isEmpty) {
                          return 'please enter your price';
                        }
                        return null;
                      },
                      prefixIcon: Icon(
                        Icons.price_check_outlined,
                        color: Colors.grey[900],
                      ),
                      hintText: 'Price',
                    ),
                    SizedBox(height: 20.h),
                    MyButton(
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          print('valid---------');
                          BlocProvider.of<PaymentCubit>(context).orderPayment(
                            firstName: firstNameController.text,
                            lastName: lastNameController.text,
                            email: emailController.text,
                            phone: phoneController.text,
                            price: priceController.text,
                          );
                        }
                      },
                      text: 'Confirm',
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
