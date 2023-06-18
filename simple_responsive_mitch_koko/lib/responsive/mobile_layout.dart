import 'package:flutter/material.dart';

class MobileLayout extends StatefulWidget {
  const MobileLayout({super.key});

  @override
  State<MobileLayout> createState() => _MobileLayoutState();
}

class _MobileLayoutState extends State<MobileLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MOBILE"),
      ),
      backgroundColor: Colors.deepPurple[200],
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: AspectRatio(
            aspectRatio: 16 / 9,
            child: Container(
              height: 250,
              color: Colors.deepPurple[400],
            ),
          ),
        ),
        Expanded(
            child: ListView.builder(
          itemCount: 8,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.all(8.0),
              child: Container(
                color: Colors.deepPurple[300],
                height: 120,
              ),
            );
          },
        ))
      ]),
    );
  }
}
