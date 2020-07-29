import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

myapp() {
  var mytext = Text(
    'Satish Kumar ',
    // textDirection: TextDirection.ltr,
    //  textAlign: TextAlign.center,
  );

  mypress() {
    print('something clicked for email icon....');
  }

  mypress2() {
    print('something clicked for clock icon ....');
  }

  var MyEmailIcon = Icon(
    Icons.email,
    color: Colors.red.shade900,
  );
  var MyCalIcon = Icon(Icons.access_alarm);

  var MyEmailButton = IconButton(icon: MyEmailIcon, onPressed: mypress);
  var MyCalButton = IconButton(icon: MyCalIcon, onPressed: mypress2);
  var url =
      'https://raw.githubusercontent.com/satishkr-20/Satish_First_Github-Project/master/satishkumar.jpeg';
  var MyImage = Image.network(
    url,
    width: double.infinity,
    height: double.infinity,
  );
  var myappbar = AppBar(
    title: mytext,
    backgroundColor: Colors.blueAccent,
    leading: MyImage,
    actions: <Widget>[
      MyEmailButton,
      MyCalButton,
    ],
  );

  var myhome = Scaffold(
    appBar: myappbar,
    body: MyImage,
    backgroundColor: Colors.black,
  );

  var design = MaterialApp(
    home: myhome,
    debugShowCheckedModeBanner: false,
  );

  return design;
}
