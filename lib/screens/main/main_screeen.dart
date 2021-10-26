import 'package:animations/animations.dart';
import 'package:chat/screens/calls/calls_hsitory_screen.dart';
import 'package:chat/screens/chats/chats_screen.dart';
import 'package:chat/screens/contacts/contacts_screen.dart';
import 'package:chat/screens/profile/profile_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  MainScreenState createState() => MainScreenState();
}

class MainScreenState extends State<MainScreen> {
  int pageIndex = 0;

  final pageList = const [
    ChatsScreen(),
    ContactsScreen(),
    CallsHistoryScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageTransitionSwitcher(
        transitionBuilder: (child, primaryAnimation, secondaryAnimation) => FadeThroughTransition(
          animation: primaryAnimation,
          secondaryAnimation: secondaryAnimation,
          child: child,
        ),
        child: pageList[pageIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: pageIndex,
        onTap: (index) {
          setState(() {
            pageIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            label: 'Chats',
            icon: Icon(Icons.messenger),
          ),
          BottomNavigationBarItem(
            label: 'People',
            icon: Icon(Icons.people),
          ),
          BottomNavigationBarItem(
            label: 'Calls',
            icon: Icon(Icons.call),
          ),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: CircleAvatar(
              radius: 14,
              backgroundImage: AssetImage('assets/images/user_2.png'),
            ),
          ),
        ],
      ),
    );
  }
}
