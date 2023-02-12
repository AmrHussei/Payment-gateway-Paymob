import 'package:flutter/material.dart';

class MyColors {
  static const mainColor = Color(0xff202194);
  static const primaryText = Color(0xff171D5B);
  static const secondaryText = Color(0xff57636C);
  static const orangeColor = Color(0xffDC5224);

  static const dividerColor = Color(0xff707070);
  static const colorGreen = Color(0xff07BF1F);
  static const descriptionColor = Color(0xffF3F3F3);
  static const borderLightColor = Color(0xff00001A);
  static const greenDeepColor = Color(0xff019F1B);
  static const dotsColor = Color(0xffEBEDEE);
  static const textFeildColor = Color(0xffF6F6F6);
  static const iconColorGrey = Color(0xff636363);
  static const hinttext = Color(0xff787878);
  static const textColor2 = Color(0xff3B3B3B);
}

class ApiConstant {
  //https://accept.paymob.com/api/auth/tokens
  static const String baseURL = 'https://accept.paymob.com/api/';
  static const String authEndPoint = 'auth/tokens';
  static const String apiKey =
      'ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6VXhNaUo5LmV5SnVZVzFsSWpvaWFXNXBkR2xoYkNJc0ltTnNZWE56SWpvaVRXVnlZMmhoYm5RaUxDSndjbTltYVd4bFgzQnJJam8yT1RNek5qaDkueVozcFBWajVSbjNCQmg2WG9RSEVmeEk1bU5ORndWTkI1eFBvTmV5U210S05WazRWV3dRNHdCc3BnWUlMeHIteC1UMV9qcExJTVNzTVFNSlktQzlPTUE=';
  static String toknAfterAuth = '';
  static const String ordersEndpoint = 'ecommerce/orders';
  static const String paymentKeyEndpoint = 'acceptance/payment_keys';
  static String orderId = '';
  static String finalToken = '';
  static String refCode = '';
  static const getRefCode = '/acceptance/payments/pay';
  static String visaUrl =
      'https://accept.paymob.com/api/acceptance/iframes/730591?payment_token=$finalToken';
}

class AssetsData {
  static const visaImage = 'assets/visa.png';
  static const refCodeImage = 'assets/refCode.png';
  static const backgroundImage = 'assets/bg.png';
}
