import 'package:flutter/material.dart';
import 'package:groceryapp/pages/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
                left: 80, right: 80, bottom: 40, top: 120),
            child: Image.asset('lib/images/banana.png'),
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Text(
              'We are the best at this business',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Text(
            'fresh items everywhere',
          ),
          Spacer(),
          GestureDetector(
            onTap: () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) {
                return HomePage();
              }),
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.deepOrange,
                borderRadius: BorderRadius.circular(15),
              ),
              padding: EdgeInsets.all(24),
              child: Text(
                'Dive in',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
