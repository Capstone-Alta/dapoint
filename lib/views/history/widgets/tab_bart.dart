// import 'dart:developer';
// import 'dart:math';

// import 'package:dapoint/constant.dart';
// import 'package:dapoint/views/history/widgets/semua.dart';
// import 'package:dapoint/views/history/widgets/status_suskes.dart';
// import 'package:dapoint/views/voucher/widgets/gridview_pulsa.dart';
// import 'package:flutter/material.dart';

// class TabBarHistory extends StatefulWidget {
//   @override
//   _TabBarHistoryState createState() => _TabBarHistoryState();
// }

// class _TabBarHistoryState extends State<TabBarHistory>
//     with SingleTickerProviderStateMixin {
//   late TabController _tabController;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.only(left: 30, right: 30),
//       height: 600,
//       child: DefaultTabController(
//           length: 4,
//           child: Scaffold(
//             appBar: AppBar(
//               backgroundColor: Colors.white,
//               elevation: 0,
//               bottom: TabBar(
//                   unselectedLabelColor: Colors.redAccent,
//                   indicatorSize: TabBarIndicatorSize.label,
//                   indicator: BoxDecoration(
//                     borderRadius: BorderRadius.circular(
//                       8.0,
//                     ),
//                     color: mainColor,
//                   ),
//                   tabs: [
//                     Tab(
//                       child: Container(
//                         width: 100,
//                         decoration: BoxDecoration(
//                             color: Colors.grey,
//                             border:
//                                 Border.all(color: Colors.redAccent, width: 1)),
//                         child: Align(
//                           alignment: Alignment.center,
//                           child: Text("APPS"),
//                         ),
//                       ),
//                     ),
//                     Tab(
//                       child: Container(
//                         decoration: BoxDecoration(
//                           color: Colors.grey,
//                           borderRadius: BorderRadius.circular(
//                             8.0,
//                           ),
//                         ),
//                         child: Align(
//                           alignment: Alignment.center,
//                           child: Text("MOVIES"),
//                         ),
//                       ),
//                     ),
//                     Tab(
//                       child: Container(
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.all(
//                               Radius.circular(10),
//                             ),
//                             border:
//                                 Border.all(color: Colors.redAccent, width: 1)),
//                         child: Align(
//                           alignment: Alignment.center,
//                           child: Text("GAMES"),
//                         ),
//                       ),
//                     ),
//                     Tab(
//                       child: Container(
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.all(
//                               Radius.circular(10),
//                             ),
//                             border:
//                                 Border.all(color: Colors.redAccent, width: 1)),
//                         child: Align(
//                           alignment: Alignment.center,
//                           child: Text("GAMES"),
//                         ),
//                       ),
//                     ),
//                   ]),
//             ),
//             body: TabBarView(children: [
//               SemuaStatus(),
//               StatusSukses(),
//               StatusSukses(),
//               StatusSukses(),
//             ]),
//           )),
//     );
//   }
// }
