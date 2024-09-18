import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'category_screen.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [
              Colors.blue[900]!,
              Colors.blue[800]!,
              Colors.blue[400]!,
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 80),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Login",
                    style: TextStyle(color: Colors.white, fontSize: 40),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Welcome Back",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 60),
                      Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(10),
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: "Username",
                                  hintStyle: TextStyle(color: Colors.grey),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                      color: Colors.grey,
                                      width: 1.5,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                            Container(
                              padding: EdgeInsets.all(10),
                              child: TextField(
                                obscureText: true, 
                                decoration: InputDecoration(
                                  hintText: "Password",
                                  hintStyle: TextStyle(color: Colors.grey),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                      color: Colors.grey,
                                      width: 1.5,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: [
                              Checkbox(
                                checkColor: Colors.greenAccent,
                                activeColor: Colors.blue,
                                value: _isChecked,
                                onChanged: (bool? value) {
                                  setState(() {
                                    _isChecked = value!;
                                  });
                                },
                              ),
                              Text('Remember me',
                                  style: TextStyle(fontSize: 16.0)),
                            ],
                          ),
                          Text(
                            "Forget Password?",
                            style:
                                TextStyle(color: Colors.blue, fontSize: 16.0),
                          ),
                        ],
                      ),
                      SizedBox(height: 40),
                      Container(
                        height: 50,
                        margin: EdgeInsets.symmetric(horizontal: 50),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.blue[900]!,
                        ),
                        child: Center(
                          child: ElevatedButton(onPressed: (){
                             Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => CategoryScreen()),
                      );
                          }, child:  Text(
                            "Login",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),)
                          
                         
                        ),
                      ),
                      SizedBox(height: 30),
                      Column(
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              // Placeholder for Touch ID action
                            },
                            child: Icon(
                              Icons.fingerprint,
                              size: 60,
                              color: Colors.blue[900],
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Use Touch ID",
                            style: TextStyle(
                              color: Colors.grey[700],
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "New to Quiz?",
                            style: TextStyle(fontSize: 16.0),
                          ),
                          SizedBox(width: 5),
                          GestureDetector(
                            onTap: () {
                              // Placeholder for navigation to register page
                            },
                            child: Text(
                              "Register",
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.blue[900],
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
