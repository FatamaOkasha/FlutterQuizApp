import 'package:flutter/material.dart';
import 'score_screen.dart';

class QuestionsScreen extends StatelessWidget {
  const QuestionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sports Quiz'),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsetsDirectional.only(end: 20),
            child: Text(
              "8/15",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              "1- How many times did Brazil win the World Cup?",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => ScoreScreen()),
                );
              },
              child: const Text('2', style: TextStyle(fontSize: 18)),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 15), 
                backgroundColor: Color.fromARGB(255, 114, 165, 253),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                )
              ),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {},
              child: const Text('3', style: TextStyle(fontSize: 18)),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 15),
                  backgroundColor: Color.fromARGB(255, 114, 165, 253),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {},
              child: const Text('4', style: TextStyle(fontSize: 18)),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 15),
                  backgroundColor: Color.fromARGB(255, 114, 165, 253),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {},
              child: const Text('5', style: TextStyle(fontSize: 18)),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 15),
                  backgroundColor: Color.fromARGB(255, 114, 165, 253),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
