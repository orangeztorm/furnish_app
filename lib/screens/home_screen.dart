import 'package:flutter/material.dart';
import '../get_hexcolor.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
                            .withOpacity(0.2),
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
                            .withOpacity(0.2),
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
                            width: MediaQuery
                                .of(context)
                                .size
                                .width - 130.0,
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
                                  contentPadding: EdgeInsets.only(
                                      left: 15.0, right: 15.0, top: 3.0),
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
                            width: MediaQuery
                                .of(context)
                                .size
                                .width / 4,
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
                            width: MediaQuery
                                .of(context)
                                .size
                                .width / 4,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/wardrobe.png'),
                              ),
                            ),
                          ),
                          Text(
                            'Wardrobe',
                            style: TextStyle(
                                color: Colors.black, fontFamily: 'Quicksand'),
                          )
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Container(
                            height: 55.0,
                            width: MediaQuery
                                .of(context)
                                .size
                                .width / 4,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/desk.png'),
                              ),
                            ),
                          ),
                          Text(
                            'Desk',
                            style: TextStyle(
                                color: Colors.black, fontFamily: 'Quicksand'),
                          )
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Container(
                            height: 55.0,
                            width: MediaQuery
                                .of(context)
                                .size
                                .width / 4,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/dresser.png'),
                              ),
                            ),
                          ),
                          Text(
                            'Dresser',
                            style: TextStyle(
                                color: Colors.black, fontFamily: 'Quicksand'),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
              itemCard('FinnNavian', 'assets/sofas.jpg', false),
              itemCard('FinnNavian', 'assets/chair.jpg', true),
              itemCard('FinnNavian', 'assets/sofa1.jpg', true),
            ],
          )
        ],
      ),
    );
  }

  Widget itemCard(String title, String imgPath, bool isFavourite) {
    return Padding(
      padding:
      EdgeInsets.only(left: 15.0, top: 15.0, right: 15.0, bottom: 15.0),
      child: Container(
          height: 160.0,
          width: double.infinity,
          color: Colors.white,
          child: Row(
//          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                height: 160.0,
                width: 140.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(imgPath),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                width: 3.0,
              ),
              Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text(
                        title,
                        style: TextStyle(
                          fontFamily: 'Quicksand',
                          color: Colors.black,
                          fontSize: 17.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 25.0),
                      Material(
                          elevation: isFavourite ? 0.0 : 2.0,
                          borderRadius: BorderRadius.circular(20.0),
                          child: Container(
                            height: 40.0,
                            width: 40.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              color: isFavourite
                                  ? Colors.grey.withOpacity(0.2)
                                  : Colors.white,
                            ),
                            child: Center(
                              child: isFavourite
                                  ? Icon(Icons.favorite_border)
                                  : Icon(
                                Icons.favorite,
                                color: Colors.red,
                              ),
                            ),
                          ))
                    ],
                  ),
                  SizedBox(height: 5.0),
                  Container(
                    width: 175.0,
                    child: Text(
                      'Scandavian small size double sofa impoerted full/Dale italia oil wax leather black',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'Quicksand',
                        fontSize: 12.0,
                      ),
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        height: 47.0,
                        color: Colors.yellowAccent,
                        child: Center(
                          child: Text(
                            "248",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Quicksand',
                              fontSize: 15.0,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 47.0,
                        color: Color(getHexColorFromString('#FDD148')),
                        child: Center(
                          child: Text(
                            "Add to cart",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Quicksand',
                              fontSize: 15.0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          )),
    );
  }
}
