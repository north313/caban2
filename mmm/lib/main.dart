import 'package:flutter/material.dart';

void main() {
  runApp(bbb());
}


class bbb extends StatelessWidget {
  const bbb({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: hhh() ,
    );
    
  }
}


class hhh extends StatefulWidget {
  hhh({Key key}) : super(key: key);

  @override
  _hhhState createState() => _hhhState();
}

class _hhhState extends State<hhh> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: SizedBox(
        width: size.width,
        height: 70.0,
        child: Row(
          mainAxisAlignment:MainAxisAlignment.spaceEvenly,
          children:[
            SizedBox(
              width: size.width * 0.8,
              child: const TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.bug_report_sharp),
                  labelText: "boo"
                  border: OutlineInputBorder()
                ),
              ),
            ),
            IconButton(
              icon: Icon(
                Icons.send
              ),
              onPressed: null,
            ),
          ]
        ),
      ),
    );
  }
}