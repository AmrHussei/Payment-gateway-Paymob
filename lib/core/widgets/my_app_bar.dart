import 'package:flutter/material.dart';
import 'package:paymob/core/widgets/text_utils.dart';

import '../constant.dart';

myAppBar({required String title}) {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 2,
    flexibleSpace: Container(
      decoration: const BoxDecoration(color: MyColors.orangeColor),
    ),
    centerTitle: true,
    title: TextUtils(
        text: title,
        fontSize: 21.0,
        color: Colors.white,
        fontWeight: FontWeight.bold,
        underLine: TextDecoration.none),
  );
}
