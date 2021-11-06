import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_first_application/widgets/drawer_item.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const _url = 'https://avatars.githubusercontent.com/u/24309704';

    return Drawer(
      child: Container(
        color: Colors.blue[900],
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.blue[900]),
                margin: EdgeInsets.zero,
                accountName: const Text(
                  'Abdullah',
                  style: TextStyle(fontSize: 22),
                ),
                accountEmail: const Text('abdullahshshaneel@outlook.com'),
                currentAccountPicture: const CircleAvatar(
                  backgroundColor: Colors.black54,
                  backgroundImage: NetworkImage(_url),
                ),
              ),
            ),
            const DrawerItem(
              name: 'Home',
              icon: CupertinoIcons.home,
              selected: true,
            ),
            const DrawerItem(
              name: 'Settings',
              icon: CupertinoIcons.settings,
              selected: false,
            ),
          ],
        ),
      ),
    );
  }
}
