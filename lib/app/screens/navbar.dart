import 'package:come_shop/app/constants/app_colors.dart';
import 'package:come_shop/app/screens/home_screen.dart';
import 'package:come_shop/app/screens/notifications_screen.dart';
import 'package:come_shop/app/screens/orders_screen.dart';
import 'package:come_shop/app/screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});
  static const routeName = '/navBar';

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  final List<Widget> _screens = [
    HomeScreen(),
    NotificationsScreen(),
    OrdersScreen(),
    ProfileScreen(),
  ];

  int selectedPageIndex = 0;

  void selectPage(int index) {
    setState(() {
      selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: AppColor.whiteColor,
      body: _screens[selectedPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColor.whiteColor,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedIconTheme: IconThemeData( size: 20),
        unselectedIconTheme: IconThemeData( size: 20),
        selectedFontSize: 16,
        unselectedFontSize: 16,
        
        currentIndex: selectedPageIndex,
        onTap: (index) {
          setState(() {
            selectedPageIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/svg/homeIcon.svg',
                color: selectedPageIndex == 0 ? AppColor.primaryColor : null,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/svg/notification.svg',
                color: selectedPageIndex == 1 ? AppColor.primaryColor : null,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/svg/orders.svg',
                color: selectedPageIndex == 2 ? AppColor.primaryColor : null,
              ),
              label: ''),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/svg/profile.svg',
              color: selectedPageIndex == 3 ? AppColor.primaryColor : null,
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
