import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('Ask Me Anything'),
            backgroundColor: Colors.blue,
          ),
          body: BallPage(),
        ),
      ),
    );

class BallPage extends StatefulWidget {
  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int ballNum = 1;
  void ballClick(){
    ballNum = Random().nextInt(5) + 1;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          children: [
            Expanded(
              child: FlatButton(
                onPressed: (){
                  setState(() {
                    ballClick();
                  });
                },
                child: Image.asset('images/ball$ballNum.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


