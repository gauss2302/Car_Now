import 'package:cars/core/theme/app_pallete.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: AppPallete.gradient1,
            ),
            child: Row(
              children: [
                Text(
                  'Drawer Header',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 10),
                Icon(Icons.menu, color: Colors.black)
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text(
              'H O M E',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w400),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.info),
            title: const Text('A B O U T',
                style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.w400)),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('P R O F I L E',
                style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.w400)),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('S E T T I N G S',
                style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.w400)),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
