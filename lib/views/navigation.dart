import 'package:dapoint/viewModels/navigation_view_model.dart';
import 'package:dapoint/views/history/history.dart';
import 'package:dapoint/views/home/home.dart';
import 'package:dapoint/views/home/widgets/voucher.dart';
import 'package:dapoint/views/profile/profile_page/profile_page.dart';
import 'package:dapoint/views/voucher/voucher_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:custom_top_navigator/custom_navigation.dart';

class HomeNav extends StatefulWidget {
  const HomeNav({Key? key}) : super(key: key);

  @override
  _HomeNavState createState() => _HomeNavState();
}

class _HomeNavState extends State<HomeNav> {
  final _layoutPage = [
    const MyHomePage(),
    VoucherPage(),
    History(),
    ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    var bottomProvider =
        Provider.of<NavigationViewModel>(context, listen: true);
    return CustomScaffold(
      children: _layoutPage,
      onItemTap: (int index) {
        bottomProvider.changePageTab = index;
      },
      scaffold: Scaffold(
        body: _layoutPage[bottomProvider.currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: true,
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          selectedItemColor: const Color.fromARGB(255, 0, 143, 191),
          unselectedItemColor: const Color.fromARGB(255, 196, 196, 196),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: "home",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.discount_rounded,
              ),
              label: "Voucher",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.assignment_rounded,
              ),
              label: "History",
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                ),
                label: "Account")
          ],
          type: BottomNavigationBarType.fixed,
          currentIndex: bottomProvider.currentIndex,
          onTap: (int index) {
            bottomProvider.changePageTab = index;
          },
        ),
      ),
    );
  }
}
