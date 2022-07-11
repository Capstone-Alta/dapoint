import 'dart:developer';
import 'dart:math';

import 'package:dapoint/constants.dart';
import 'package:dapoint/views/voucher/widgets/gridView.dart';
import 'package:flutter/material.dart';

class TabBarPulsa extends StatefulWidget {
  @override
  _TabBarPulsaState createState() => _TabBarPulsaState();
}

class _TabBarPulsaState extends State<TabBarPulsa>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      padding: const EdgeInsets.only(left: 30, right: 30),
      child: Column(
        children: [
          // give the tab bar a height [can change hheight to preferred height]
          Container(
            height: 60,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(
                8.0,
              ),
            ),
            child: TabBar(
              controller: _tabController,
              // give the indicator a decoration (color and border radius)
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  8.0,
                ),
                color: mainColor,
              ),
              labelColor: Colors.white,
              unselectedLabelColor: Colors.white,
              tabs: [
                Tab(
                  text: 'Pulsa',
                ),
                Tab(
                  text: 'Data',
                ),
              ],
            ),
          ),
          SizedBox(height: 16),
          // tab bar view here
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                GridViewc(),
                // second tab bar view widget
                GridViewc(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
