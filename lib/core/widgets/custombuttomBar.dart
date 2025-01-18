// import 'package:cars_app/features/camera/camera.dart';
// import 'package:cars_app/features/explore/explore.dart';
// import 'package:cars_app/features/message/message.dart';
// import 'package:cars_app/features/profile/profile.dart';
// import 'package:flutter/material.dart';

// import '../../features/home/presentation/views/home_page.dart';
// import '../resources/color.dart';

// class ButtomNavBar extends StatefulWidget {
//   const ButtomNavBar({super.key});

//   @override
//   State<ButtomNavBar> createState() => _ButtomNavBarState();
// }

// class _ButtomNavBarState extends State<ButtomNavBar> {
//   List pages = [
//     HomePage(),
//     ExplorePage(),
//     CamerPage(),
//     MessagePage(),
//     ProfilePage()
//   ];
//   int selectedIndex = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: PageView(
//         children: [pages.elementAt(selectedIndex)],
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         type: BottomNavigationBarType.fixed,
//         elevation: 3,
//         onTap: (value) {
//           setState(() {
//             selectedIndex = value;
//           });
//         },
//         selectedItemColor: blue,
//         currentIndex: selectedIndex,
//         unselectedItemColor: gray,
//         backgroundColor: white,
//         items: const [
//           BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Home"),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.explore_outlined), label: "Explore"),
//           BottomNavigationBarItem(icon: Icon(Icons.add), label: "Explore"),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.mail_outline_rounded), label: "Message"),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.person_outline), label: "Profile")
//         ],
//       ),
//     );
//   }
// }
