import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 350.0,
                width: double.infinity,
              ),
              Container(
                height: 200.0,
                width: double.infinity,
                color: Color(0xfffa624f),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: IconButton(
                  icon: IconButton(
                    icon: Icon(Icons.arrow_back_ios),
                    onPressed: () {},
                    color: Colors.white,
                  ),
                ),
              ),
              Positioned(
                top: 125.0,
                left: 15.0,
                right: 15.0,
                child: Material(
                  elevation: 3.0,
                  borderRadius: BorderRadius.circular(7.0),
                  child: Container(
                    height: 200.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7.0),
                        color: Colors.white),
                  ),
                ),
              ),
              Positioned(
                top: 75.0,
                left: (MediaQuery.of(context).size.width / 2) - 50.0,
                child: Container(
                  height: 100.0,
                  width: 100.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      image: DecorationImage(
                          image: AssetImage(""), fit: BoxFit.cover)),
                ),
              ),
              Positioned(
                top: 190.0,
                left: (MediaQuery.of(context).size.width / 2) - 105.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Dreamwalker",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 17.0),
                    ),
                    SizedBox(height: 7.0,),
                    Text(
                      'Japan/Tokyo', style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17.0,
                      color: Colors.grey,
                    ),
                    ),
                    SizedBox(height: 10.0,),
                    Row(
                      children: <Widget>[
                        FlatButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7.0),

                          ),
                          color: Color(0xFFFA624F),
                          onPressed: (){},
                          child: Text(
                            'Message',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15.0,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    )
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
