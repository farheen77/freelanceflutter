import 'package:car_app/pages/car_info.dart';
import 'package:car_app/pages/home.dart';
import 'package:flutter/material.dart';

class CarsList extends StatefulWidget {
  @override
  _CarsListState createState() => _CarsListState();
}

class _CarsListState extends State<CarsList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            PageRouteBuilder(
                              transitionDuration: Duration(seconds: 1),
                              transitionsBuilder:
                                  (context, animation, animationTime, child) {
                                animation = CurvedAnimation(
                                    parent: animation,
                                    curve: Curves.easeInQuint);
                                return ScaleTransition(
                                    scale: animation,
                                    alignment: Alignment.topCenter,
                                    child: child);
                              },
                              pageBuilder: (context, animation, animationTime) {
                                return Home();
                              },
                            ));
                      },
                      child: Container(
                        height: 45,
                        width: 55,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.grey[300],
                          ),
                        ),
                        child: Icon(Icons.menu),
                      ),
                    ),
                    Spacer(),
                    Text(
                      'Jimmy',
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    CircleAvatar(
                      radius: 12.0,
                      backgroundImage: AssetImage('assets/icon.jpeg'),
                      backgroundColor: Colors.grey[600],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Choose your\nawesome car!',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                          height: 1.3),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        PageRouteBuilder(
                          transitionDuration: Duration(seconds: 1),
                          transitionsBuilder:
                              (context, animation, animationTime, child) {
                            animation = CurvedAnimation(
                                parent: animation,
                                curve: Curves.easeInOutQuint);
                            return ScaleTransition(
                                scale: animation,
                                alignment: Alignment.bottomCenter,
                                child: child);
                          },
                          pageBuilder: (context, animation, animationTime) {
                            return CarInfo();
                          },
                        ));
                  },
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white),
                    width: 250.0,
                    child: ClipRRect(
                      child: Wrap(children: <Widget>[
                        Image.asset('assets/white.png'),
                      ]),
                    ),
                  ),
                ),
                SizedBox(height: 10.0),
                Container(
                  child: Text(
                    'BMW 8 Series Coupe',
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 5.0),
                Container(
                  child: Text(
                    'Starts from \$ 202,405',
                    style: TextStyle(
                      fontSize: 10.0,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white),
                  width: 250.0,
                  child: ClipPath(
                    child: Wrap(children: <Widget>[
                      Image.asset('assets/grey.png'),
                    ]),
                  ),
                ),
                SizedBox(height: 10.0),
                Container(
                  child: Text(
                    'BMW 8 Series Coupe',
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 5.0),
                Container(
                  child: Text(
                    'Starts from \$ 202,405',
                    style: TextStyle(
                      fontSize: 10.0,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  width: 200.0,
                  child: ClipRect(
                    child: Wrap(children: <Widget>[
                      Image.asset('assets/black.png'),
                    ]),
                  ),
                ),
                SizedBox(height: 10.0),
                Container(
                  child: Text(
                    'BMW 7 Series Sedan',
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 5.0),
                Container(
                  child: Text(
                    'Starts from \$ 202,405',
                    style: TextStyle(
                      fontSize: 10.0,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  width: 200.0,
                  child: ClipRect(
                    child: Wrap(children: <Widget>[
                      Image.asset('assets/blue.png'),
                    ]),
                  ),
                ),
                Container(
                  child: Text(
                    'BMW 8 Series Coupe',
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 5.0),
                Container(
                  child: Text(
                    'Starts from \$ 202,405',
                    style: TextStyle(
                      fontSize: 10.0,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
              padding: EdgeInsets.symmetric(vertical: 30),
              height: 600,
              width: 350,
              child:
                  ListView(scrollDirection: Axis.vertical, children: <Widget>[
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                  SizedBox(
                    height: 30,
                  ),
                ])
              ]))
        ],
      ),
    );
  }
}
