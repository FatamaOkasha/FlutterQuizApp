import 'package:flutter/material.dart';
import 'login_page.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
          
            Image.asset(
              'assets/blue.jpg',
              fit: BoxFit.cover,
            ),

            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(height: 150),
                      Text(
                        'ITI Quiz App',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontFamily: 'Pacifico',
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'We Are Creative, enjoy our App',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                // Button at the bottom
                Container(
                  width: 200,
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        padding: EdgeInsets.symmetric(vertical: 30),
                        textStyle:
                            TextStyle(fontSize: 16.0, color: Colors.white),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        )),
                    child: Text('Start',
                        style:
                            TextStyle(color: Colors.blueAccent, fontSize: 22)),
                  ),
                ),
                SizedBox(height: 30),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
