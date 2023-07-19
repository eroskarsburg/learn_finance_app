import 'package:flutter/material.dart';

class HamburguerDrawer extends StatelessWidget {
  final String actualPage;

  HamburguerDrawer(this.actualPage);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const UserAccountsDrawerHeader(
              // currentAccountPicture: Image.asset("assets/images/shared/user_example.jpg"),
              accountName: Text("User's Account Test"),
              accountEmail: Text("useraccounttest@enterprise.com.br"),
            ),
            ListTile(
              leading: actualPage.toLowerCase() != "home"
                  ? const Icon(Icons.home)
                  : const Icon(Icons.home_filled),
              title: const Text("Home"),
            )
          ],
        ),
      ),
    );
  }
}
