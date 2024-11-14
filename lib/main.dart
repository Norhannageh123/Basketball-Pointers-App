import 'package:flutter/material.dart';

void main() {
  runApp(const BasketballPointers());
}

class BasketballPointers extends StatefulWidget {
  const BasketballPointers({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _BasketballPointersState createState() => _BasketballPointersState();
}

class _BasketballPointersState extends State<BasketballPointers> {
  int teamAPoints = 0;
  int teamBPoints = 0;

  void addPointsToTeamA(int points) {
    setState(() {
      teamAPoints += points;
    });
  }

  
  void addPointsToTeamB(int points) {
    setState(() {
      teamBPoints += points;
    });
  }

  void resetPoints() {
    setState(() {
      teamAPoints = 0;
      teamBPoints = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: const Text(
            'Pointers Counter',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 600,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  
                  Container(
                    height: 500,
                    child: Column(
                      children: [
                        const Text(
                          'Team A',
                          style: TextStyle(fontSize: 30, color: Colors.black),
                        ),
                        Text(
                          '$teamAPoints',
                          style: const TextStyle(fontSize: 150, color: Colors.black),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange, minimumSize: const Size(100, 50)),
                          onPressed: () => addPointsToTeamA(1),
                          child: const Text(
                            'Add 1 Point',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        const SizedBox(height: 16),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange, minimumSize: const Size(100, 50)),
                          onPressed: () => addPointsToTeamA(2),
                          child: const Text(
                            'Add 2 Points',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        const SizedBox(height: 16),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange, minimumSize: const Size(100, 50)),
                          onPressed: () => addPointsToTeamA(3),
                          child: const Text(
                            'Add 3 Points',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 400,
                    child: VerticalDivider(
                      color: Colors.grey,
                      thickness: 1,
                    ),
                  ),
                  
                  Container(
                    height: 500,
                    child: Column(
                      children: [
                        const Text(
                          'Team B',
                          style: TextStyle(fontSize: 30, color: Colors.black),
                        ),
                        Text(
                          '$teamBPoints',
                          style: const TextStyle(fontSize: 150, color: Colors.black),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange, minimumSize: const Size(100, 50)),
                          onPressed: () => addPointsToTeamB(1),
                          child: const Text(
                            'Add 1 Point',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        const SizedBox(height: 16),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange, minimumSize: const Size(100, 50)),
                          onPressed: () => addPointsToTeamB(2),
                          child: const Text(
                            'Add 2 Points',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        const SizedBox(height: 16),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange, minimumSize: const Size(100, 50)),
                          onPressed: () => addPointsToTeamB(3),
                          child: const Text(
                            'Add 3 Points',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // زر إعادة التعيين
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange, minimumSize: const Size(100, 50)),
              onPressed: resetPoints,
              child: const Text(
                'Reset',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
