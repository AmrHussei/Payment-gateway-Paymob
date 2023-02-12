import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:paymob/business_logic/cubit/payment_cubit.dart';
import 'package:paymob/data/services/payment_services.dart';
import 'package:paymob/presentation/screens/confirm_screen.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await PaymentServices.intiDio();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => PaymentCubit()..authPayment()),
      ],
      child: const _MyApp(),
    );
  }
}

class _MyApp extends StatelessWidget {
  const _MyApp();

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          darkTheme: ThemeData.dark(),
          debugShowCheckedModeBanner: false,
          title: 'First Method',
          home: child,
        );
      },
      child: ConfirmScreen(),
    );
  }
}
