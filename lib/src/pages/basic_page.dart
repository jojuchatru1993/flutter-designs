import 'package:flutter/material.dart';

class BasicPage extends StatelessWidget {
  final styleTittle = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final styleSubtittle = TextStyle(fontSize: 15.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(children: [
            _createImage(),
            _createTittle(),
            _createActions(),
            _createText(),
            _createText(),
            _createText(),
            _createText()
          ]),
        ),
      ),
    );
  }

  Widget _createImage() {
    return Container(
      width: double.infinity,
      child: Image(
        image: NetworkImage(
            'https://compote.slate.com/images/5e48cf3d-0992-4eda-a080-e00e07738b2f.jpg'),
        height: 200.0,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _createTittle() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
      child: Row(children: [
        Expanded(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text('Windows XP', style: styleTittle),
          SizedBox(height: 5.0),
          Text('Operating System', style: styleSubtittle)
        ])),
        Icon(Icons.star, color: Colors.red, size: 30.0),
        Text("5.0", style: TextStyle(fontSize: 20.0))
      ]),
    );
  }

  Widget _createActions() {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      _action(Icons.call, 'CALL'),
      _action(Icons.near_me, 'ROUTE'),
      _action(Icons.share, 'SHARE')
    ]);
  }

  Widget _action(IconData icon, String text) {
    return Column(
      children: [
        Icon(icon, color: Colors.blue, size: 30.0),
        SizedBox(height: 5.0),
        Text(text, style: TextStyle(fontSize: 15.0, color: Colors.blue))
      ],
    );
  }

  Widget _createText() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        child: Text(
            'Minim ullamco sunt consectetur labore nisi velit consequat. Consequat reprehenderit ullamco aliqua ea non eu aliquip dolor fugiat. Incididunt esse nulla incididunt pariatur eu irure veniam laborum excepteur cupidatat non reprehenderit irure. Minim ullamco sunt consectetur labore nisi velit consequat. Consequat reprehenderit ullamco aliqua ea non eu aliquip dolor fugiat. Incididunt esse nulla incididunt pariatur eu irure veniam laborum excepteur cupidatat non reprehenderit irure.',
            textAlign: TextAlign.justify),
      ),
    );
  }
}
