import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Material(
        child: Stack(
          children: [
            const MyAppBar(),
            Center(
                child: Stack(
              children: [
                Title(
                    color: Colors.black,
                    child: const Text("You don't have anything to study yet"))
              ],
            ))
          ],
        ),
      ),
    );
  }
}

class MyAppBar extends StatelessWidget {
  const MyAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Recal",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
            const Icon(
              Icons.favorite,
              color: Colors.purple,
            ),
            Expanded(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      child: IconButton(
                        icon: Icon(Icons.score),
                        onPressed: () {
                          print("Score");
                        },
                      ),
                    )),
                Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      child: IconButton(
                        icon: Icon(Icons.notifications),
                        onPressed: () {
                          print("Notifications");
                        },
                      ),
                    )),
                Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      child: IconButton(
                        icon: Icon(Icons.add),
                        onPressed: () {
                          print("Add");
                        },
                      ),
                    )),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
