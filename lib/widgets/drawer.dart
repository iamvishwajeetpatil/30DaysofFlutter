import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final imgUrl =
        "https://media.licdn.com/dms/image/D4E03AQG338qWXCQVpA/profile-displayphoto-shrink_100_100/0/1665237648182?e=1695859200&v=beta&t=KdOKgS0yOSS6zT5gXjewk5fcBbNxS_2Jl9bc1-5oczE";
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imgUrl),
                ),
                accountName: const Text("Vishwajeet Patil"),
                accountEmail: const Text("Vishwa@info.com"),
              ),
            ),
            ListTile(
              onTap: () {
                print("Home");
              },
              leading: const Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: const Text(
                'Home',
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              onTap: () {
                print("Settings");
              },
              leading: const Icon(
                CupertinoIcons.settings,
                color: Colors.white,
              ),
              title: const Text(
                'Settings',
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              onTap: () {
                print("Profile");
              },
              leading: const Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: const Text(
                'Profile',
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              onTap: () {
                print("About us");
              },
              leading: const Icon(
                CupertinoIcons.info_circle,
                color: Colors.white,
              ),
              title: const Text(
                'About Us',
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
