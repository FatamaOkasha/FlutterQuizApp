import 'package:flutter/material.dart';
import 'questions_screen.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => QuestionsScreen()),
                    );
                  },
                  child: Container(
                    color: Colors.blue,
                    child: Center(
                        child: Text(
                      "Sports Quiz",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 36),
                    )),
                  ))),

          Expanded(
             child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => QuestionsScreen()),
                    );
                  },
            child: Container(
            color: Colors.white,
            child: Center(
                child: Text("IQ Quiz",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 26))),
          ))),
          Expanded(
             child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => QuestionsScreen()),
                    );
                  },
              child: Container(
            color:  Colors.purpleAccent,
            child: Center(
                child: Text("Math Quiz",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 26))),
          ))),
        ],
      ),
    );
  }
}
