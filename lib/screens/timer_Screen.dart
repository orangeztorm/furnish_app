import 'package:flutter/material.dart';
import 'package:furnish_app/get_hexcolor.dart';

class TimerScreen extends StatefulWidget {
  @override
  _TimerScreenState createState() => _TimerScreenState();
}

class _TimerScreenState extends State<TimerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: <Widget>[
        Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: 250.0,
                  width: double.infinity,
                  color: Color(getHexColorFromString('#FDD148')),
                ),
                Positioned(
                  bottom: 50.0,
                  right: 100.0,
                  child: Container(
                    height: 400.0,
                    width: 400.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(200.0),
                      color: Color(getHexColorFromString('#FDD148'))
                          .withOpacity(0.5),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 100.0,
                  left: 150.0,
                  child: Container(
                    height: 250.0,
                    width: 250.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(125.0),
                      color: Color(getHexColorFromString('#FDD148'))
                          .withOpacity(0.5),
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      children: <Widget>[
                        SizedBox(width: 10.0,),
                        Container(
                          alignment: Alignment.topLeft,
                          height: 75.0,
                          width: 75.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(37.5),
                            border: Border.all(
                              color: Colors.white,
                              style: BorderStyle.solid,
                              width: 3.0
                            ),
                            image: DecorationImage(
                              image: AssetImage('assets/yellow_girl.jpg')
                            )
                          ),
                        ),
                        SizedBox(width: 10.0,),
                        Column(
                          children: <Widget>[
                          ],
                        )
                      ],
                    )
                  ],
                )
              ],
            )
          ],
        )
      ],
    ));
  }
}
