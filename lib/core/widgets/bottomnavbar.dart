import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedBottomNavigationBar(
      icons: const [
        Icons.home,
        Icons.search,
        Icons.favorite,
        Icons.settings,
      ],
      activeIndex: 0,
      gapLocation: GapLocation.none,
      onTap: (index) => print('Tapped on bar with index $index'),
    );
    // return NavigationBar(destinations: [
    //   const NavigationDestination(
    //     icon: Icon(Icons.home),
    //     label: 'Home',
    //     // route: '/',
    //   ),
    //   const NavigationDestination(
    //     icon: Icon(Icons.search),
    //     label: 'Search',
    //     // route: '/search',
    //   ),
    //   const NavigationDestination(
    //     icon: Icon(Icons.favorite),
    //     label: 'Favorites',
    //     // route: '/favorites',
    //   ),
    //   const NavigationDestination(
    //     icon: Icon(Icons.settings),
    //     label: 'Settings',
    //     // route: '/settings',
    //   ),
    // ]);
  }
}
