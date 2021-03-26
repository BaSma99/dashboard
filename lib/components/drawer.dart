import 'package:dashboard/screens/CreateTraining.dart';
import 'package:dashboard/screens/DashboardScreen.dart';
import 'package:dashboard/screens/CreateUser.dart';
import 'package:flutter/material.dart';

class DrawerComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text('Admin'),
            accountEmail: Text('Admin404@gmail.com'),
            currentAccountPicture: GestureDetector(
              child: CircleAvatar(
                backgroundColor: Colors.grey,
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
              ),
            ),
            decoration: new BoxDecoration(
              color: Colors.blue,
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => new DashboardScreen()));
            },
            child: ListTile(
              title: Text('Dashboard'),
              leading: Icon(Icons.color_lens_rounded, color: Colors.blue),
            ),
          ),
          Divider(thickness: 1, color: Colors.grey),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => new CreateNewTrainingScreen()));
            },
            child: ListTile(
              title: Text('Create New Training'),
              leading: Icon(Icons.post_add_outlined, color: Colors.blue),
            ),
          ),
          Divider(thickness: 1, color: Colors.grey),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => new CreateNewUserScreen()));
            },
            child: ListTile(
              title: Text('Create New User'),
              leading: Icon(Icons.person_add_rounded, color: Colors.blue),
            ),
          ),
          Divider(thickness: 1, color: Colors.grey),
          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text('Manage Users'),
              leading: Icon(
                Icons.miscellaneous_services_rounded,
                color: Colors.blue,
              ),
            ),
          ),
          Divider(thickness: 1, color: Colors.grey),
          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text('LogOut'),
              leading: Icon(
                Icons.logout,
                color: Colors.blue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
