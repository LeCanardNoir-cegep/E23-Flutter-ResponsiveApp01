import 'package:flutter/material.dart';

class DesktopLayout extends StatefulWidget {
  const DesktopLayout({super.key});

  @override
  State<DesktopLayout> createState() => _DesktopLayoutState();
}

class _DesktopLayoutState extends State<DesktopLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DESKTOP"),
      ),
      backgroundColor: Colors.deepPurple[200],
      // FIRST COLUMN
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: SingleChildScrollView(
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: AspectRatio(
                    aspectRatio: 16 / 9,
                    child: Container(
                      color: Colors.deepPurple[400],
                      child: Center(
                        child: LayoutBuilder(
                          builder: (context, constraints) =>
                              Text(constraints.maxHeight.toStringAsFixed(0)),
                        ),
                      ),
                    ),
                  ),
                ),
                Column(
                  children: List<Widget>.generate(
                      8,
                      (index) => Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              color: Colors.deepPurple[300],
                              height: 120,
                            ),
                          )),
                )
                /* Expanded(
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
                              )) */
              ]),
            ),
          ),
          // SECOND COLUMN
          Expanded(
            flex: 1,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: List<Widget>.generate(
                    20,
                    (index) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            color: Colors.deepPurple[300],
                            height: 120,
                          ),
                        )),
              ),
            ),
          )
        ],
      ),
    );
  }
}
