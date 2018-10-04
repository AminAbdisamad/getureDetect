import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Gesture Detect App'), actions: <Widget>[
        new IconButton(
          icon: Icon(Icons.account_balance),
          onPressed: () => print("Pressed .."),
        )
      ]),

      // Body
      body: new Center(
        child: CustomButton(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.info), title: Text("Info")),
          BottomNavigationBarItem(
              icon: Icon(Icons.event), title: Text("Schedule")),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_location),
            title: Text("Map"),
          )
        ],
      ),
    );

    // Custom Button
  }
}

// Custom Button

class CustomButton extends StatelessWidget {
  @override
  build(BuildContext context) {
    return new GestureDetector(
// Create a custom button
      onTap: () {
        // Create variable snackBar and give hello there text
        final snackBar = new SnackBar(
          content: new Text('Hello There'),
          backgroundColor: Colors.blue,
        );

        //display
        Scaffold.of(context).showSnackBar(snackBar);
      },
      child: new Container(
        padding: new EdgeInsets.all(15.0),
        decoration: new BoxDecoration(
            // color: Theme.of(context).buttonColor,
            color: Colors.blue,
            borderRadius: BorderRadius.circular(5.7)),
        child: Text("Touch Me Touch Me"),
      ),
    );
  }
}
