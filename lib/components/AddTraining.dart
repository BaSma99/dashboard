import 'package:flutter/material.dart';
import 'package:dashboard/components/drawer.dart';

class AddTraining extends StatefulWidget {
  @override
  _AddTrainingState createState() => _AddTrainingState();
}

class _AddTrainingState extends State<AddTraining> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  labelText: 'Tarining Name',
                  hintText: 'Name for tarining here..',
                ),
              ),
            ),
            RaisedButton(
              textColor: Colors.white,
              color: Colors.blue,
              child: Text('Add Training'),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
