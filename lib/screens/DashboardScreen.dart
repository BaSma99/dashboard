import 'package:flutter/material.dart';
import 'package:dashboard/components/drawer.dart';

class DashboardScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        // backgroundColor: Colors.deepPurple,
        title: Text('Dashboard'),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.save_rounded, color: Colors.white),
              onPressed: () {
                //   Navigator.push(context,
                //       MaterialPageRoute(builder: (context) => new Saved()));
              }),
          IconButton(
              icon: Icon(Icons.rounded_corner, color: Colors.white),
              onPressed: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => new Courses()));
              }),
        ],
      ),
      drawer: DrawerComponent(),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(15),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Search',
                  hintText: 'Search for tarining here..',
                ),
              ),
            ),
            RaisedButton(
              textColor: Colors.white,
              color: Colors.blue,
              child: Text('Search'),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
