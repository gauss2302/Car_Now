import 'package:cars/core/widgets/appbar.dart';
import 'package:cars/core/widgets/drawer.dart';
import 'package:cars/features/auth/presentation/LoginPage.dart';
import 'package:cars/features/auth/presentation/SignUpPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SignUpPage(),
    );
  }
}

// class MyHomePage extends StatelessWidget {
//   const MyHomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Car Sharing App'),
//         backgroundColor: Theme.of(context).colorScheme.primary,
//         actions: [
//           IconButton(
//             onPressed: () {},
//             icon: Icon(Icons.interests_rounded),
//           ),
//           IconButton(
//             onPressed: () {},
//             icon: Icon(Icons.more_vert),
//           ),
//         ],
//       ),
//       drawer: const DrawerWidget(),
//       bottomNavigationBar: NavigationBar(destinations: [
//         NavigationDestination(
//           icon: Icon(Icons.home),
//           label: 'Home',
//           // route: '/',
//         ),
//         const NavigationDestination(
//           icon: Icon(Icons.search),
//           label: 'Search',
//           // route: '/search',
//         ),
//         const NavigationDestination(
//           icon: Icon(Icons.favorite),
//           label: 'Favorites',
//           // route: '/favorites',
//         ),
//         const NavigationDestination(
//           icon: Icon(Icons.settings),
//           label: 'Settings',
//           // route: '/settings',
//         ),
//       ]),
//       body: const Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               'Welcome to Car Sharing App',
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
