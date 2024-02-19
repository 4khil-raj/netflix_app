import 'package:flutter/material.dart';

class HomeTabBar extends StatelessWidget {
  const HomeTabBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TabBar(
      tabs: const [
        Tab(
          text: 'TV Shows',
        ),
        Tab(
          text: 'Movies',
        ),
        Tab(
          text: 'Categories',
        ),
      ],
      labelPadding: const EdgeInsets.symmetric(horizontal: 16.0),
      dividerColor: Colors.black,
      unselectedLabelColor: Colors.white,
      indicatorColor: Colors.white,
      isScrollable: true,
      labelColor: Colors.red,
      indicatorSize: TabBarIndicatorSize.tab,
      indicatorWeight: 0.5,
      indicator: BoxDecoration(
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(20)),
      indicatorPadding: const EdgeInsets.all(5),
    );
  }
}
