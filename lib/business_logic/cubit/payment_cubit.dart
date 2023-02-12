import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:meta/meta.dart';

import '../../core/constant.dart';
import '../../data/services/payment_services.dart';

part 'payment_state.dart';

class PaymentCubit extends Cubit<PaymentState> {
  PaymentCubit() : super(PaymentInitial());

  void authPayment() async {
    await PaymentServices.authOfPayment().then((value) {
      ApiConstant.toknAfterAuth = value.data["token"];
      print('*************************************');
      print(ApiConstant.toknAfterAuth);
    }).catchError((error) {
      print('authPayment ERRoRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRR');
      print(error);
    });
  }

  void orderPayment({
    required String firstName,
    required String lastName,
    required String email,
    required String phone,
    required String price,
  }) async {
    try {
      emit(OrderLoading());

      Response response = await PaymentServices.orderRegistration(price: price);
      ApiConstant.orderId = response.data["id"].toString();
      print(' ApiConstant.orderId-------------------');
      print(ApiConstant.orderId);
      await PaymentServices.paymentKey(
        firstName: firstName,
        lastName: lastName,
        email: email,
        phone: phone,
        price: price,
      );
      emit(OrderSuccess());
    } catch (error) {
      print('//////////////////////////////////////');
      print(error.toString());
    }
  }

  Future getRefCode() async {
    try {
      emit(GetRefCode());
      await PaymentServices.getRefCode();
      emit(GetRefCodeSucces());
    } catch (e) {
      print(e.toString());
      emit(GetRefCodeSucces());
    }
  }
}
