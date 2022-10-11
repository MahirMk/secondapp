import 'package:flutter/material.dart';

class DrawerExample extends StatefulWidget {

  @override
  State<DrawerExample> createState() => _DrawerExampleState();
}

class _DrawerExampleState extends State<DrawerExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                child: Text("K"),
              ),
              accountName: Text("Welcome, Karon"),
              accountEmail: Text("test@gmail.com"),
            ),
            ListTile(
              leading: CircleAvatar(
                child: Text("A"),
              ),
              title: Text("Karon Infotech"),
              subtitle: Text("Hi..."),
              trailing: Text("10:00 AM"),
              onTap: (){},
            ),
            ListTile(
              leading: CircleAvatar(
                child: Text("A"),
              ),
              title: Text("Karon Infotech"),
              subtitle: Text("Hi..."),
              trailing: Icon(Icons.arrow_forward_ios_outlined),
              onTap: (){},
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200.0,
              color: Colors.red,
              margin: EdgeInsets.all(10.0),
            ),
          ],
        ),
      ),
      body: Text("Drawer"),
    );
  }
}
