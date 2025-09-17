import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../popups/FilterBottomSheet.dart' show FilterBottomSheet;
import 'custom_bottom_nb.dart' show CustomBottomNavigationBar;

class FourthScreen extends StatefulWidget {
  const FourthScreen({super.key});

  @override
  State<FourthScreen> createState() => _FourthScreenState();
}

class _FourthScreenState extends State<FourthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: customDrawer(context),
      appBar: customAppBar(context),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showBS(context),
        backgroundColor: Colors.blueGrey,
        child: Icon(Icons.filter_alt, color: Colors.white),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Card(
              color: Color.fromARGB(255, 239, 246, 253),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/images/img2.png",
                      width: 100,
                      height: 100,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Cart Title",
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          Text(
                            "Cards are the surface that displays the content and actions on a single surface",
                            style: Theme.of(context).textTheme.labelMedium,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CustomBottomNavigationBar(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
              ),
              child: Text("Play"),
            ),

            SizedBox(height: 10),

            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.green,
                fixedSize: Size(200, 30),
              ),
              child: Text("outline button"),
            ),

            SizedBox(height: 10),

            TextButton(onPressed: () {}, child: Text("Flat Button")),

            SizedBox(height: 10),

          ],
        ),
      ),
    );
  }

  void showBS(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
      builder: (context) => FilterBottomSheet(),
    );
  }

  AppBar customAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.blue,
      foregroundColor: Colors.white,
      title: Text("Test App"),
      actions: [menuButton(context)],
    );
  }

  PopupMenuButton menuButton(BuildContext context) {
    return PopupMenuButton(
      itemBuilder: (context) => [
        const PopupMenuItem(value: 'Profile', child: Text('Profile')),
        const PopupMenuItem(value: 'Settings', child: Text('Settings')),
        PopupMenuItem(
          value: 'Logout',
          child: Text('Logout'),
          onTap: () => logoutDialog(context),
        ),
      ],
    );
  }

  void logoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Logout'),
        content: Text('Are you sure you?'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('No'),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
              Navigator.of(context).pop();
            },
            child: Text('Yes'),
          ),
        ],
      ),
    );
  }

  Drawer customDrawer(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.all(10),
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Colors.blue),
            child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              accountName: Text("Shivam Patel", style: TextStyle(fontSize: 18)),
              accountEmail: Text("shivampatel@gmail.com"),
              currentAccountPictureSize: Size.square(50),
              currentAccountPicture: CircleAvatar(
                child: Text(
                  "S",
                  style: TextStyle(fontSize: 30.0, color: Colors.blue),
                ),
              ),
            ),
          ),

          ListTile(
            leading: const Icon(Icons.person),
            title: const Text(' My Profile '),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.book),
            title: const Text(' My Course '),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.workspace_premium),
            title: const Text(' Go Premium '),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.video_label),
            title: const Text(' Saved Videos '),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.edit),
            title: const Text(' Edit Profile '),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('LogOut'),
            onTap: () {
              logoutDialog(context);
            },
            shape: Border.all(color: Colors.red, width: 1),
          ),
        ],
      ),
    );
  }
}
