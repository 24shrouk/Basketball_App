import 'package:flutter/material.dart';

void main() {
  runApp(PointsCounter());
}

class PointsCounter extends StatefulWidget {
  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  int team1points = 0;

  int team2points = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Points Counter'),
          backgroundColor: Colors.indigo,
          toolbarHeight: 64,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           const Spacer(),
            Row(
              children: [
               const Spacer(),
                Column(children: [
                  const Text(
                    'Team 1',
                    style: TextStyle(
                      fontSize: 40,
                    ),
                  ),
                  Text(
                    '$team1points',
                    style: const TextStyle(
                      fontSize: 150,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        team1points++;
                      });
                    },
                    child: Text(
                      'Add 1 point',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.indigo,
                      minimumSize: Size(150, 50),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        team1points += 2;
                      });
                    },
                    child: Text(
                      'Add 2 point',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.indigo,
                      minimumSize: const Size(150, 50),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        team1points += 3;
                      });
                    },
                    child: Text(
                      'Add 3 point',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.indigo,
                      minimumSize: Size(150, 50),
                    ),
                  ),
                ]),
                Spacer(),
                SizedBox(
                  height: 400,
                  child: VerticalDivider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                ),
                Spacer(),
                Column(children: [
                  const Text(
                    'Team 2',
                    style: TextStyle(
                      fontSize: 40,
                    ),
                  ),
                  Text(
                    '$team2points',
                    style: TextStyle(
                      fontSize: 150,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        setState(() {
                          team2points++;
                        });
                      });
                    },
                    child: Text(
                      'Add 1 point',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.indigo,
                      minimumSize: Size(150, 50),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        team2points += 2;
                      });
                    },
                    child: Text(
                      'Add 2 point',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.indigo,
                      minimumSize: const Size(150, 50),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        team2points += 3;
                      });
                    },
                    child: Text(
                      'Add 3 point',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.indigo,
                      minimumSize: Size(150, 50),
                    ),
                  ),
                ]),
                Spacer(),
              ],
            ),
            Spacer(),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  team1points = 0;
                  team2points = 0;
                });
              },
              child: Text(
                'Reset',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.indigo,
                minimumSize: Size(200, 50),
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
