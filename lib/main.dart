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
  final darkBrown = Color(0xffAC714F);
  final lightBrown = Color(0xffFFE7D4);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Row(
          children: [
            Container(
              width: mediaQuery.width * 0.5,
              color: darkBrown,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 150,
                    child: Container(
                      height: 150,
                      width: 150,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          backgroundColor: darkBrown,
                          backgroundImage: AssetImage('images/me.jpg'),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: mediaQuery.height * 0.05),
                  Column(
                    children: [
                      Text(
                        'NATHANIEL',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: lightBrown),
                      ),
                      Text(
                        'AKUBUO',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: lightBrown),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'FLUTTER DEVELOPER',
                        style: TextStyle(
                          fontSize: 15,
                          color: lightBrown,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                    child: Divider(
                      thickness: 4,
                      color: Color(0xffFFE7D4),
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        'CONTACT',
                        style: TextStyle(
                            fontSize: 20,
                            color: lightBrown,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'INFORMATION',
                        style: TextStyle(
                            fontSize: 20,
                            color: lightBrown,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Email: nakubuo@gmail.com',
                          style: TextStyle(color: lightBrown, fontSize: 15),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'LinkedIn: linkedin.com/in/nathanielakubuo/',
                          style: TextStyle(color: lightBrown, fontSize: 15),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'GitHub: github.com/Nathaniel-Akubuo/',
                          style: TextStyle(color: lightBrown, fontSize: 15),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Twitter: twitter.com/NathanielAkubuo',
                          style: TextStyle(color: lightBrown, fontSize: 15),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: mediaQuery.width * 0.5,
              color: lightBrown,
            )
          ],
        ),
      ),
    );
  }
}
