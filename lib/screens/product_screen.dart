import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductScreen extends StatefulWidget {
  @override
  _ProductScreenState createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  int photoIndex = 0;
  List<String> photos = [
    'assets/soafas.jpg',
    'assets/sofa1.jpg',
    'assets/sofas.jpg',
  ];

  void _previousImage() {
    setState(() {
      photoIndex = photoIndex < 0 ? photoIndex - 1 : 0;
    });
  }

  void _nextImage() {
    setState(() {
      photoIndex = photoIndex < photos.length - 1 ? photoIndex + 1 : photoIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    height: 275.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(photos[photoIndex]),
                          fit: BoxFit.cover),
                      color: Colors.white,
                    ),
                  ),
                  GestureDetector(
                    child: Container(
                      height: 275.0,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.transparent,
                    ),
                    onTap: _nextImage,
                  ),
                  GestureDetector(
                    child: Container(
                      height: 275.0,
                      width: MediaQuery.of(context).size.width / 2,
                      color: Colors.transparent,
                    ),
                    onTap: _previousImage,
                  ),
                  Padding(
                      padding: EdgeInsets.only(right: 15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          IconButton(
                            icon: Icon(Icons.arrow_back_ios),
                            onPressed: () {},
                            color: Colors.black,
                          ),
                          Material(
                            elevation: 4.0,
                            borderRadius: BorderRadius.circular(20.0),
                            child: Container(
                              height: 40.0,
                              width: 40.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Icon(
                                Icons.favorite_border,
                                color: Colors.red,
                              ),
                            ),
                          )
                        ],
                      )),
                  Positioned(
                    top: 240.0,
                    left: MediaQuery.of(context).size.width / 2 - 30.0,
                    child: Row(
                      children: <Widget>[
                        SelectedPhoto(
                          numberOfDots: photos.length,
                          photoIndex: photoIndex,
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 20.0),
              Padding(
                  padding: EdgeInsets.only(left: 15.0),
                  child: Text('Alcide Number : 2323X',
                      style: TextStyle(
                        fontFamily: 'Quicksand',
                        fontSize: 15.0,
                        color: Colors.grey,
                      ))),
              SizedBox(height: 10.0),
              Padding(
                  padding: EdgeInsets.only(left: 15.0),
                  child: Text('Finn Navian-Sofa',
                      style: TextStyle(
                        fontFamily: 'Quicksand',
                        fontSize: 25.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ))),
              Padding(
                padding: EdgeInsets.only(left: 15.0, right: 15.0),
                child: Row(
                  children: <Widget>[
                    Container(
                        width: (MediaQuery.of(context).size.width) / 1.5,
                        child: Text(
                            'Scandinavan small size doulble sofa/ imported full leather/ Dale italia oil wax  leather black',
                            style: TextStyle(
                              fontFamily: 'Quicksand',
                              fontSize: 12.0,
                              color: Colors.grey.withOpacity(0.8),
                            ))),
                    SizedBox(width: 5.0),
                    Text('\$ 248',
                        style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontSize: 25.0,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ))
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class SelectedPhoto extends StatelessWidget {
  final int numberOfDots;
  final int photoIndex;

  SelectedPhoto({this.numberOfDots, this.photoIndex});

  Widget _inactivePhoto() {
    return Container(
        child: Padding(
            padding: EdgeInsets.only(left: 3.0, right: 3.0),
            child: Container(
                width: 8.0,
                height: 8.0,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(4.0),
                ))));
  }

  Widget _activePhoto() {
    return Container(
        child: Padding(
            padding: EdgeInsets.only(left: 3.0, right: 3.0),
            child: Container(
                width: 10.0,
                height: 10.0,
                decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(5.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 0.0,
                        blurRadius: 2.0,
                      )
                    ]))));
  }

  List<Widget> _buildDots() {
    List<Widget> dots = [];

    for (int i = 0; i < numberOfDots; ++i) {
      dots.add(i == photoIndex ? _activePhoto() : _inactivePhoto());
    }
    return dots;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: _buildDots(),
      ),
    );
  }
}
