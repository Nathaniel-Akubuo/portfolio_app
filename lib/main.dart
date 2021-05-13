import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final kDarkBrown = Color(0xffAC714F);
  final kLightBrown = Color(0xffFFE7D4);

  @override
  Widget build(BuildContext context) {
    final contactInfoTextStyle = TextStyle(color: kDarkBrown, fontSize: 17);
    return SafeArea(
      child: Scaffold(
        backgroundColor: kDarkBrown,
        body: Column(
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                color: kDarkBrown,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        height: 150,
                        width: 150,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            backgroundColor: kDarkBrown,
                            backgroundImage: AssetImage('images/me.jpg'),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      'NATHANIEL AKUBUO',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: kLightBrown),
                    ),
                    SizedBox(height: 15),
                    Text(
                      'FLUTTER DEVELOPER',
                      style: TextStyle(
                        fontSize: 20,
                        color: kLightBrown,
                      ),
                    ),
                    SizedBox(height: 30)
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(
                  color: kLightBrown,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(height: 30),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'CONTACT INFORMATION',
                                style: TextStyle(
                                    fontSize: 25,
                                    color: kDarkBrown,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(height: 25),
                          Text('Email: nakubuo@gmail.com',
                              style: contactInfoTextStyle),
                          SizedBox(height: 25),
                          Text('LinkedIn: linkedin.com/in/nathanielakubuo/',
                              style: contactInfoTextStyle),
                          SizedBox(height: 25),
                          Text('GitHub: github.com/Nathaniel-Akubuo/',
                              style: contactInfoTextStyle),
                          SizedBox(height: 25),
                          Text('Twitter: twitter.com/NathanielAkubuo',
                              style: contactInfoTextStyle),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
