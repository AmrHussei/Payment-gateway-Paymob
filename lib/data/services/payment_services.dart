import 'package:dio/dio.dart';

import '../../core/constant.dart';

class PaymentServices {
  static late Dio dio;
  static intiDio() {
    dio = Dio(
      BaseOptions(
        baseUrl: ApiConstant.baseURL,
        headers: {
          'Content-Type': 'application/json',
        },
        receiveDataWhenStatusError: true,
      ),
    );
  }

  static Future<Response> postData({
    required String url,
    Map<String, dynamic>? data,
  }) async {
    return await dio.post(
      url,
      data: data,
    );
  }

  static Future<Response> authOfPayment() async {
    return await postData(
      url: ApiConstant.authEndPoint,
      data: {
        "api_key":
            "ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6VXhNaUo5LmV5SnVZVzFsSWpvaWFXNXBkR2xoYkNJc0ltTnNZWE56SWpvaVRXVnlZMmhoYm5RaUxDSndjbTltYVd4bFgzQnJJam8yT1RNek5qaDkueVozcFBWajVSbjNCQmg2WG9RSEVmeEk1bU5ORndWTkI1eFBvTmV5U210S05WazRWV3dRNHdCc3BnWUlMeHIteC1UMV9qcExJTVNzTVFNSlktQzlPTUE="
      },
    );
  }

  static Future<Response> orderRegistration({
    required String price,
  }) async {
    return await postData(
      url: ApiConstant.ordersEndpoint,
      data: {
        "auth_token": ApiConstant.toknAfterAuth,
        "delivery_needed": "false",
        "amount_cents": price,
        "currency": "EGP",
        "items": [],
      },
    );
  }

  static paymentKey({
    required String firstName,
    required String lastName,
    required String email,
    required String phone,
    required String price,
  }) async {
    await postData(
      url: ApiConstant.paymentKeyEndpoint,
      data: {
        "auth_token": ApiConstant.toknAfterAuth,
        "amount_cents": price,
        "expiration": 3600,
        "order_id": ApiConstant.orderId,
        "billing_data": {
          "apartment": "NA",
          "email": email,
          "floor": "NA",
          "first_name": firstName,
          "street": "NA",
          "building": "NA",
          "phone_number": phone,
          "shipping_method": "NA",
          "postal_code": "NA",
          "city": "NA",
          "country": "NA",
          "last_name": lastName,
          "state": "NA"
        },
        "currency": "EGP",
        "integration_id": 3383780,
        "lock_order_when_paid": "false"
      },
    ).then((value) {
      ApiConstant.finalToken = value.data["token"].toString();
      print('final token++++++++++++++++++++++');
      print(ApiConstant.finalToken);
    }).catchError((e) {
      print(e.toString());
    });
  }

  static getRefCode() async {
    await postData(
      url: ApiConstant.getRefCode,
      data: {
        "source": {"identifier": "AGGREGATOR", "subtype": "AGGREGATOR"},
        "payment_token": ApiConstant.finalToken
      },
    ).then(
      (value) {
        ApiConstant.refCode = value.data['id'].toString();
        print('The ref code 🍅${ApiConstant.refCode}');
      },
    ).catchError(
      (error) {
        print("Error in ref code 🤦‍♂️");
      },
    );
  }
}
