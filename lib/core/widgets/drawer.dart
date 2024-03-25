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
              color: Color.fromARGB(255, 129, 193, 245),
            ),
            child: Text(
              'Drawer Header',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            title: const Text(
              'H O M E',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w400),
            ),
            onTap: () {},
          ),
          ListTile(
            title: const Text('A B O U T',
                style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.w400)),
            onTap: () {},
          ),
          ListTile(
            title: const Text('P R O F I L E',
                style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.w400)),
            onTap: () {},
          ),
          ListTile(
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
