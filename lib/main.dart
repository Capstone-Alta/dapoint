import 'package:dapoint/viewModels/navigation_view_model.dart';
import 'package:dapoint/viewModels/transactions._view_model.dart';
import 'package:dapoint/viewModels/voucher_view_model.dart';
import 'package:dapoint/views/splash.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => NavigationViewModel()),
        ChangeNotifierProvider(
            create: (_) => VoucherViewModel()..getListVoucher()),
        ChangeNotifierProvider(create: (_) => TransactionsViewModel()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Dapoint',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: 'FontInter',
        ),
        home: const SplashScreen(),
      ),
    );
  }
}
