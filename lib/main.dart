import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Get hex color from string function
  int getHexColorFromString(String colorStr) {
    colorStr = "FF" + colorStr;
    colorStr = colorStr.replaceAll('#', "");
    int val = 0;
    int len = colorStr.length;
    for (int i = 0; i < len; i++) {
      int hexDigit = colorStr.codeUnitAt(i);
      if (hexDigit >= 48 && hexDigit <= 57) {
        val += (hexDigit - 48) * (1 << (4 * (len - 1 - i)));
      } else if (hexDigit <= 65 && hexDigit <= 70) {
        val += (hexDigit - 55) * (1 << (4 * (len - 1 - i)));
      } else if (hexDigit <= 97 && hexDigit <= 102) {
        val += (hexDigit - 87) * (1 << (4 * (len - 1 - i)));
      } else {
        throw new FormatException('An error occurred while converting color');
      }
    }
    return val;
  }

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
                    bottom: 150.0,
                    left: 100.0,
                    child: Container(
                      height: 400.0,
                      width: 400.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(200),
                        color: Color(getHexColorFromString('#FDD148'))
                            .withOpacity(0.4),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 100.0,
                    right: 150.0,
                    child: Container(
                      height: 300.0,
                      width: 300.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(200),
                        color: Color(getHexColorFromString('#FDD148'))
                            .withOpacity(0.5),
                      ),
                    ),
                  ),
                  Column(
                    children: <Widget>[
                      SizedBox(
                        height: 15.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(
                            width: 15.0,
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            height: 50.0,
                            width: 50.0,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.white,
                                width: 2.0,
                                style: BorderStyle.solid,
                              ),
                              borderRadius: BorderRadius.circular(25.0),
                              image: DecorationImage(
                                  image: AssetImage('assets/yellow_girl.jpg')),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width - 130.0,
                          ),
                          Container(
                            alignment: Alignment.topRight,
                            child: IconButton(
                              icon: Icon(Icons.menu),
                              onPressed: () {},
                              color: Colors.white,
                              iconSize: 30.0,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 25.0,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15.0),
                        child: Text(
                          'Hello , Pino',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Quicksand',
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15.0),
                        child: Text(
                          'What do you want to buy?',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Quicksand',
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Padding(
                          padding: EdgeInsets.only(left: 15.0, right: 15.0),
                          child: Material(
                            elevation: 5.0,
                            borderRadius: BorderRadius.circular(5.0),
                            child: TextFormField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  prefixIcon: Icon(
                                    Icons.search,
                                    color: Color(
                                      getHexColorFromString('#FDD148'),
                                    ),
                                    size: 30.0,
                                  ),
                                  contentPadding:
                                  EdgeInsets.only(left: 15.0, right: 15.0, top: 3.0),
                                  hintText: 'Search',
                                  hintStyle: TextStyle(
                                      color: Colors.grey,
                                      fontFamily: 'Quicksand',
                                      fontSize: 25.0)),
                            ),
                          )),
                      SizedBox(
                        height: 10.0,
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Stack(
                children: <Widget>[
                  SizedBox(
                    height: 10.0,
                  ),
                  Material(
                    elevation: 5.0,
                    child: Container(
                      color: Colors.white,
                      height: 75.0,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Container(
                            height: 55.0,
                            width: MediaQuery.of(context).size.width / 4,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/sofa_icon.png'),
                              ),
                            ),
                          ),
                          Text(
                            'Sofa',
                            style: TextStyle(
                                color: Colors.black, fontFamily: 'Quicksand'),
                          )
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Container(
                            height: 55.0,
                            width: MediaQuery.of(context).size.width / 4,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/sofa_icon.png'),
                              ),
                            ),
                          ),
                          Text(
                            'Sofa',
                            style: TextStyle(
                                color: Colors.black, fontFamily: 'Quicksand'),
                          )
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Container(
                            height: 55.0,
                            width: MediaQuery.of(context).size.width / 4,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/sofa_icon.png'),
                              ),
                            ),
                          ),
                          Text(
                            'Sofa',
                            style: TextStyle(
                                color: Colors.black, fontFamily: 'Quicksand'),
                          )
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Container(
                            height: 55.0,
                            width: MediaQuery.of(context).size.width / 4,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/sofa_icon.png'),
                              ),
                            ),
                          ),
                          Text(
                            'Sofa',
                            style: TextStyle(
                                color: Colors.black, fontFamily: 'Quicksand'),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
