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
  
  List<Widget> smslist = [];
  void createSingleSms() {

  }

  @override
  _hhhState createState() => _hhhState();
}

class _hhhState extends State<hhh> {

List<Widget> smsList = [];
void  createSingleSms() {
  Widget text = const Text("ky");
  smsList.add(text);
}
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child:ListView.builder(
          itemBuilder:(context, index) {
            return smsList[index];
          }, 
          itemCount: smsList.length,
          ),
      ),




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
                  labelText: "boo",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30))
                  )
                ),
              ),
            ),
            IconButton(
              icon:const Icon(Icons.arrow_forward_ios), 
              onPressed: () {
                createSingleSms();
              }, 
            ),
          ]
        ),
      )  
    );
  }
}


