import 'package:flutter/material.dart';
import 'package:minimal_chat_wk/services/auth/auth_service.dart';
import 'package:minimal_chat_wk/pages/settings_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  void logout() {
    final auth = AuthService();
    auth.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: SizedBox(
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                //Logo
                DrawerHeader(
                  child: Center(
                    child: Icon(
                      Icons.message,
                      color: Theme.of(context).colorScheme.primary,
                      size: 40,
                    ),
                  ),
                ),

                // Home list tile
                Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: ListTile(
                    iconColor: Theme.of(context).colorScheme.primary,
                    title: const Text('H O M E'),
                    leading: const Icon(
                      Icons.home,
                    ),
                    onTap: () {
                      // Pop the drower
                      Navigator.pop(context);
                    },
                  ),
                ),

                // settings list tile
                Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: ListTile(
                    iconColor: Theme.of(context).colorScheme.primary,
                    title: const Text('S E T T I N G S'),
                    leading: Icon(
                      Icons.settings,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    onTap: () {
                      // Pop the drawer
                      Navigator.pop(context);

                      // navigate to settings page
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SettingsPage(),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),

            // logout list tile
            Padding(
              padding: const EdgeInsets.only(left: 25.0, bottom: 25.0),
              child: ListTile(
                iconColor: Theme.of(context).colorScheme.primary,
                title: const Text(
                  'L O G O U T',
                ),
                leading: const Icon(
                  Icons.logout,
                ),
                onTap: logout,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
