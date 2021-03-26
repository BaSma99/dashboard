import 'package:dashboard/components/AddTraining.dart';
import 'package:flutter/material.dart';
import 'package:dashboard/components/drawer.dart';

class CreateNewTrainingScreen extends StatefulWidget {
  @override
  _CreateNewTrainingScreenState createState() =>
      _CreateNewTrainingScreenState();
}

class _CreateNewTrainingScreenState extends State<CreateNewTrainingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        // backgroundColor: Colors.deepPurple,
        title: Text('Create New Training'),
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
      body: AddTraining(),
    );
  }
}
