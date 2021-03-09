import 'package:flutter/material.dart';

class ScrollPage extends StatelessWidget {
  const ScrollPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: [_page1(), _page2()],
      ),
    );
  }

  Widget _page1() {
    return Stack(
      children: [_backgroundColor(), _backgroundImage(), _texts()],
    );
  }

  Widget _page2() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1.0),
      child: Center(
          child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape: StadiumBorder(), primary: Colors.blue),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: Text('Welcome',
              style: TextStyle(color: Colors.white, fontSize: 20.0)),
        ),
        onPressed: () {},
      )),
    );
  }

  Widget _backgroundColor() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1.0),
    );
  }

  Widget _backgroundImage() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Image(image: AssetImage('assets/scroll-1.png'), fit: BoxFit.cover),
    );
  }

  Widget _texts() {
    final textStyle = TextStyle(color: Colors.white, fontSize: 50.0);

    return Column(
      children: [
        SafeArea(child: SizedBox(height: 20.0)),
        Text('11°', style: textStyle),
        Text('Miércoles', style: textStyle),
        Expanded(child: Container()),
        Icon(Icons.keyboard_arrow_down, size: 100.0, color: Colors.white)
      ],
    );
  }
}
