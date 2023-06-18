import 'package:flutter/material.dart';

class Portrait extends StatefulWidget {
  const Portrait({super.key});

  @override
  State<Portrait> createState() => _PortraitState();
}

class _PortraitState extends State<Portrait> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Portrait")),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Container(
              height: 250,
              color: Theme.of(context).primaryColor,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 100,
              color: Colors.purpleAccent[100],
            )
          ],
        ),
      ),
    );
  }
}
