import 'package:flutter/material.dart';

import 'dart:ui';
import 'dart:math';

class ButtonsPage extends StatelessWidget {
  const ButtonsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            _backgroundApp(),
            SingleChildScrollView(
                child: Column(
              children: [_titles(), _customButtons()],
            ))
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          fixedColor: Colors.pink,
          backgroundColor: Color.fromRGBO(55, 57, 84, 1.0),
          unselectedItemColor: Color.fromRGBO(116, 117, 152, 1.0),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_today), label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.pie_chart_outlined), label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.supervised_user_circle), label: '')
          ],
        ));
  }

  Widget _backgroundApp() {
    final gradient = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: FractionalOffset(0.0, 0.6),
              end: FractionalOffset(0.0, 1.0),
              colors: [
            Color.fromRGBO(52, 54, 101, 1.0),
            Color.fromRGBO(35, 37, 57, 1.0)
          ])),
    );

    final pinkBox = Transform.rotate(
        angle: -pi / 5.0,
        child: Container(
          height: 360.0,
          width: 360.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(80.0),
              gradient: LinearGradient(colors: [
                Color.fromRGBO(236, 98, 188, 1.0),
                Color.fromRGBO(241, 142, 172, 1.0),
              ])),
        ));

    return Stack(
      children: [gradient, Positioned(top: -100, child: pinkBox)],
    );
  }

  Widget _titles() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text('Classify transaction',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold)),
          SizedBox(height: 10.0),
          Text('Classify this transaction into a particular category',
              style: TextStyle(color: Colors.white, fontSize: 15.0))
        ]),
      ),
    );
  }

  Widget _customButtons() {
    return Table(children: [
      TableRow(children: [
        _customButton(Colors.blueAccent, Icons.border_all, 'General'),
        _customButton(Colors.purpleAccent, Icons.directions_bus, 'Bus')
      ]),
      TableRow(children: [
        _customButton(Colors.redAccent, Icons.ac_unit_outlined, 'Freeze'),
        _customButton(Colors.greenAccent, Icons.arrow_back, 'Arrow')
      ]),
      TableRow(children: [
        _customButton(Colors.lightGreenAccent, Icons.chat_rounded, 'Chart'),
        _customButton(Colors.orangeAccent, Icons.access_alarm_sharp, 'Alarm')
      ]),
      TableRow(children: [
        _customButton(Colors.amberAccent, Icons.ad_units, 'Units'),
        _customButton(Colors.tealAccent, Icons.backpack, 'Backpack')
      ])
    ]);
  }

  Widget _customButton(Color color, IconData icon, String text) {
    return ClipRRect(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
        child: Container(
          height: 180.0,
          margin: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
              color: Color.fromRGBO(62, 66, 107, 0.7),
              borderRadius: BorderRadius.circular(20.0)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(height: 5.0),
              CircleAvatar(
                backgroundColor: color,
                radius: 30.0,
                child: Icon(icon, color: Colors.white, size: 30.0),
              ),
              Text(text, style: TextStyle(color: color)),
              SizedBox(height: 5.0)
            ],
          ),
        ),
      ),
    );
  }
}
