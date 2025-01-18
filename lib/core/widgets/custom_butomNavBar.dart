// ignore_for_file: library_private_types_in_public_api, constant_identifier_names

import 'package:cars_app/config/responsive.dart';
import 'package:cars_app/core/resources/color.dart';
import 'package:cars_app/core/resources/string.dart';
import 'package:cars_app/core/resources/style.dart';
import 'package:cars_app/features/explore/explore.dart';
import 'package:cars_app/features/message/message.dart';
import 'package:cars_app/features/profile/profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../features/camera/camera.dart';
import '../../features/home/presentation/views/home_page.dart';

class ButtomNavBar extends StatefulWidget {
  const ButtomNavBar({super.key});

  @override
  _ButtomNavBarState createState() => _ButtomNavBarState();
}

class _ButtomNavBarState extends State<ButtomNavBar> with TickerProviderStateMixin {
  late AnimationController animationController;
  late Widget indexView;
  BottomBarType bottomBarType = BottomBarType.Home;

  @override
  void initState() {
    animationController =
        AnimationController(duration: const Duration(milliseconds: 400), vsync: this);
    indexView = const HomePage(
        // animationController: animationController,
        );
    animationController.forward();
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).bottomNavigationBarTheme.backgroundColor,
      bottomNavigationBar: SizedBox(
          height: screenHight*0.08,
          child: getBottomBarUI(bottomBarType)),
      body: indexView,
    );
  }

  void tabClick(BottomBarType tabType) {
    if (tabType != bottomBarType) {
      bottomBarType = tabType;
      animationController.reverse().then((f) {
        if (tabType == BottomBarType.Home) {
          setState(() {
            indexView = const HomePage(
                // animationController: animationController,
                );
          });
        } else if (tabType == BottomBarType.Explore) {
          setState(() {
            indexView = const ExplorePage(
                //animationController: animationController,
                );
          });
        } else if (tabType == BottomBarType.plus) {
          setState(() {
            indexView = const CamerPage(
                //animationController: animationController,
                );
          });
        } else if (tabType == BottomBarType.message) {
          setState(() {
            indexView = const MessagePage(
                //  animationController: animationController,
                );
          });
        } else if (tabType == BottomBarType.Profile) {
          setState(() {
            indexView = const ProfilePage(
                //  animationController: animationController,
                );
          });
        }
      });
    }
  }

  Widget getBottomBarUI(BottomBarType tabType) {
    return Container(
       height: 70 + MediaQuery.of(context).padding.bottom,
      decoration:  BoxDecoration(
        color: Theme.of(context).bottomNavigationBarTheme.backgroundColor,
        // AppTheme.isLightTheme ? HexColor("#FFFFFF") : HexColor("#111827"),
        // ignore: prefer_const_literals_to_create_immutables
        boxShadow: [
          const BoxShadow(
            color: Colors.grey,
            blurRadius: 1,
            spreadRadius: 2,
            offset: Offset(5.0, 5.0),
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(right: 24, left: 24, bottom: 18),
        child: 
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                tabClick(BottomBarType.Home);
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.home_filled,
                    color: tabType == BottomBarType.Home ? blue : gray,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    Strings.HOME.tr,
                    style: Styles.textStyle14.copyWith(
                      color: tabType == BottomBarType.Home
                          ? blue
                          : gray
                    ),
                  )
                ],
              ),
            ),
            InkWell(
              onTap: () {
                tabClick(BottomBarType.Explore);
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.explore_outlined,
                    color: tabType == BottomBarType.Explore ? blue : gray,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    Strings.EXPLORE.tr,
                    style: Styles.textStyle14.copyWith(
                      color: tabType == BottomBarType.Explore
                          ? blue
                          : gray,
                    ),
                  )
                ],
              ),
            ),
            InkWell(
              onTap: () {
                tabClick(
                  BottomBarType.plus,
                );
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 40,
                    height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(22),color:blue ),
                     
                      child: const Icon(Icons.add,color: white,size: 30,)),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                tabClick(
                  BottomBarType.message,
                );
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [ Icon(
                    Icons.email_outlined,
                    color: tabType == BottomBarType.message ? blue : gray,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                Strings.MESSAGE.tr,
                    style: Styles.textStyle14.copyWith(
                      color: tabType == BottomBarType.message
                          ? blue
                          : gray,
                    ),
                  )
                ],
              ),
            ),
            InkWell(
              onTap: () {
                tabClick(BottomBarType.Profile);
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   Icon(
                    Icons.person_outline_rounded,
                    color: tabType == BottomBarType.Profile ? blue : gray,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    Strings.PROFILE.tr,
                    style: Styles.textStyle14.copyWith(
                      color: tabType == BottomBarType.Profile
                          ? blue
                          : gray,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      
      ),
    );
  }
}

enum BottomBarType {
  Home,
  Explore,
  plus,
  message,
  Profile,
}
