import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int TeamAPoints = 0;

  int TeamBPoints = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 23,
          backgroundColor: Colors.orange,
          title: Text('Points Counter'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // This works now
            const SizedBox(
              height: 16,
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text(
                        'Team A',
                        style: TextStyle(
                          fontSize: 32,
                        ),
                      ),
                      Text(
                        '$TeamAPoints',
                        style: TextStyle(
                          fontSize: 80,
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: Size(150, 50),
                        ),
                        onPressed: () {
                          TeamAPoints = TeamAPoints + 1;
                          setState(() {});
                        },
                        child: Text(
                          'Add 1 Point',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      // This works now
                      const SizedBox(
                        height: 16,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: Size(150, 50),
                        ),
                        onPressed: () {
                          TeamAPoints = TeamAPoints + 2;
                          setState(() {});
                        },
                        child: Text(
                          'Add 2 Point',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: Size(150, 50),
                        ),
                        onPressed: () {
                          TeamAPoints = TeamAPoints + 3;
                          setState(() {});
                        },
                        child: Text(
                          'Add 3 Point',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 350,
                    child: VerticalDivider(
                      width: 6,
                      thickness: 3,
                      indent: 4,
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        'Team B',
                        style: TextStyle(
                          fontSize: 32,
                        ),
                      ),
                      Text(
                        '$TeamBPoints',
                        style: TextStyle(
                          fontSize: 80,
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: Size(150, 50),
                        ),
                        onPressed: () {
                          TeamBPoints = TeamBPoints + 1;
                          setState(() {});
                        },
                        child: Text(
                          'Add 1 Point',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      // This works now
                      const SizedBox(
                        height: 16,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: Size(150, 50),
                        ),
                        onPressed: () {
                          TeamBPoints = TeamBPoints + 2;
                          setState(() {});
                        },
                        child: Text(
                          'Add 2 Point',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: Size(150, 50),
                        ),
                        onPressed: () {
                          TeamBPoints = TeamBPoints + 3;
                          setState(() {});
                        },
                        child: Text(
                          'Add 3 Point',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                minimumSize: Size(150, 50),
              ),
              onPressed: () {
                TeamAPoints = 0;
                TeamBPoints = 0;
                setState(() {});
              },
              child: Text(
                ' Reset ',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(height: 150),
          ],
        ),
      ),
    );
  }
}
