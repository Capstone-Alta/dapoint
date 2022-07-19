import 'package:dapoint/views/account/login_view_model.dart';
import 'package:dapoint/views/account/register_view_model.dart';
import 'package:dapoint/views/home/home.dart';
import 'package:dapoint/views/navigation/navigation_view_model.dart';
import 'package:dapoint/views/voucher/transactions._view_model.dart';
import 'package:dapoint/views/voucher/voucher_view_model.dart';
import 'package:dapoint/views/splash.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String? token;

  @override
  void initState() {
    super.initState();
    getToken();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => LoginViewModel(),
        ),
        ChangeNotifierProvider(
          create: (context) => RegisterViewModel(),
        ),
        ChangeNotifierProvider(create: (_) => NavigationViewModel()),
        ChangeNotifierProvider(create: (_) => TransactionsViewModel()),
        ChangeNotifierProvider(
            create: (_) => VoucherViewModel()..getListVoucher()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Dapoint',
        theme: ThemeData(
          fontFamily: 'FontInter',
        ),
        home: token != null ? const MyHomePage() : const SplashScreen(),
      ),
    );
  }

  getToken() async {
    SharedPreferences pref = await SharedPreferences.getInstance();

    setState(() {
      token = pref.getString("token");
    });
  }
}
