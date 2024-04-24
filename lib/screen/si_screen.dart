import 'package:flutter/material.dart';

class SimpleInterestScreen extends StatefulWidget {
  const SimpleInterestScreen({super.key});

  @override
  State<SimpleInterestScreen> createState() => _SimpleInterestScreenState();
}

class _SimpleInterestScreenState extends State<SimpleInterestScreen> {
// Delcare variables
  double? principle;
  double? time;
  double? rate;
  double simpleInterest = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        title: const Text("Simple Interest"),
        backgroundColor: Colors.green,
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            TextField(
              onChanged: (value) {
                principle = double.parse(value);
              },
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter principle amount..',
              ),
            ),
            const SizedBox(height: 8),
            TextField(
              onChanged: (value) {
                time = double.parse(value);
              },
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter time',
              ),
            ),
            const SizedBox(height: 8),
            TextField(
              onChanged: (value) {
                rate = double.parse(value);
              },
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter rate amount..',
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            // Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    simpleInterest = (principle! * time! * rate!) / 100;
                  });
                },
                child: const Text(
                  'Calculate SI',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 8),

            // Display informatuion
            Text(
              'The simple interest is : $simpleInterest %',
              style: const TextStyle(
                fontSize: 30,
              ),
            ),
            RichText(
                text: TextSpan(
                    text: "Hello",
                    style: TextStyle(color: Colors.black, fontSize: 30),
                    children: [
                  TextSpan(
                      text: 'bold',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.amber)),
                  TextSpan(text: ' world!')
                ])),
            RichText(
                text: TextSpan(children: [
              TextSpan(
                text: "M",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                    fontSize: 30),
              ),
              TextSpan(
                text: "y",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              TextSpan(text: "name", style: TextStyle()),
              TextSpan(text: "is"),
              TextSpan(text: "Prasanna")
            ]))
          ],
        ),
      ),
    );
  }
}
