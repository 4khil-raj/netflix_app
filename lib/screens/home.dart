// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix_clone/widgets/card_home.dart';
import 'package:netflix_clone/widgets/tab_bar.dart';

ValueNotifier<bool> tabNotifier = ValueNotifier(false);

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.search),
                color: Colors.white,
                iconSize: 25,
              ),
            )
          ],
          backgroundColor: Colors.transparent,
          leading: Image.network(
              'https://images.ctfassets.net/4cd45et68cgf/Rx83JoRDMkYNlMC9MKzcB/2b14d5a59fc3937afd3f03191e19502d/Netflix-Symbol.png?w=700&h=456'),
          bottom: PreferredSize(
              preferredSize: Size.fromHeight(40),
              child: ValueListenableBuilder(
                  valueListenable: tabNotifier,
                  builder: (context, isTabBarVisible, _) {
                    return isTabBarVisible ? const HomeTabBar() : SizedBox();
                  })),
        ),
        body: NotificationListener<UserScrollNotification>(
          onNotification: (notification) {
            final ScrollDirection direction = notification.direction;
            if (direction == ScrollDirection.reverse) {
              tabNotifier.value = false;
            } else if (direction == ScrollDirection.forward) {
              tabNotifier.value = true;
            }
            return true;
          },
          child: Column(
            children: [
              Center(
                child: cardHome(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
