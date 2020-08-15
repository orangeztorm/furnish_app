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
                        SizedBox(
                          width: 10.0,
                        ),
                        Container(
                          alignment: Alignment.topLeft,
                          height: 75.0,
                          width: 75.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(37.5),
                              border: Border.all(
                                  color: Colors.white,
                                  style: BorderStyle.solid,
                                  width: 3.0),
                              image: DecorationImage(
                                  image: AssetImage('assets/yellow_girl.jpg'))),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Pino',
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Quicksand',
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '176****590',
                              style: TextStyle(
                                color: Colors.black.withOpacity(0.3),
                                fontFamily: 'Quicksand',
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                                width:
                                    MediaQuery.of(context).size.width - 150.0),
                            SizedBox(
                              height: 15.0,
                            ),
                          ],
                        ),
                        Container(
                          alignment: Alignment.topRight,
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.settings,
                            ),
                            color: Colors.white,
                            iconSize: 30.0,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          child: Column(
                            children: <Widget>[
                              IconButton(
                                icon: Icon(Icons.folder_shared),
                                onPressed: () {},
                                color: Colors.white,
                                iconSize: 40.0,
                              ),
                              Text(
                                'Favourites',
                                style: TextStyle(
                                  fontFamily: 'Quicksand',
                                  color: Colors.white,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: <Widget>[
                              IconButton(
                                icon: Icon(Icons.account_balance_wallet),
                                onPressed: () {},
                                color: Colors.white,
                                iconSize: 40.0,
                              ),
                              Text(
                                'Wallet',
                                style: TextStyle(
                                  fontFamily: 'Quicksand',
                                  color: Colors.white,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: <Widget>[
                              IconButton(
                                icon: Icon(Icons.ac_unit),
                                onPressed: () {},
                                color: Colors.white,
                                iconSize: 40.0,
                              ),
                              Text(
                                'Access',
                                style: TextStyle(
                                  fontFamily: 'Quicksand',
                                  color: Colors.white,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: <Widget>[
                              IconButton(
                                icon: Icon(Icons.accessibility_new),
                                onPressed: () {},
                                color: Colors.white,
                                iconSize: 40.0,
                              ),
                              Text(
                                'Body',
                                style: TextStyle(
                                  fontFamily: 'Quicksand',
                                  color: Colors.white,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 25.0,
                    ),
                    Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            cardDetails('Pending payment', 'assets/card.png', '5'),
                            cardDetails('To be shipped', 'assets/ship.png', '2'),
                          ],
                        ),
                        SizedBox(height: 10.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            cardDetails('To be received', 'assets/delivery.png', '8'),
                            cardDetails('Return / replace', 'assets/return.jpg', '0'),
                          ],
                        ),
                        SizedBox(height:5.0),
                      ],
                    ),
                  ],
                )
              ],
            )
          ],
        )
      ],
    ));
  }

  Widget cardDetails(String title, String imgPath, String value) {
    return Material(
      elevation: 4.0,
      borderRadius: BorderRadius.circular(7.0),
      child: Container(
        height: 125.0,
        width: (MediaQuery.of(context).size.width / 2) - 20,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7.0),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 15.0,
              ),
              child: Image.asset(
                imgPath,
                fit: BoxFit.cover,
                height: 50.0,
                width: 50.0,
              ),
            ),
            SizedBox(height: 2.0,),
            Padding(
              padding: EdgeInsets.only(left:15.0,),
              child: Text(
                title,
                style: TextStyle(
                  fontFamily: 'Quicksand',
                  color: Colors.black,
                  fontSize: 15.0,
                ),
              ),
            ),
            SizedBox(height: 3.0,),
            Padding(
              padding: EdgeInsets.only(left:15.0,),
              child: Text(
                value,
                style: TextStyle(
                  fontFamily: 'Quicksand',
                  color: Colors.redAccent,
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
