import 'package:flutter/material.dart';

void main() {
  runApp(const MumbleClient());
}

class MumbleClient extends StatelessWidget {
  const MumbleClient({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Modern Mumble',
      theme: ThemeData(
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        useMaterial3: true
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Row(
              verticalDirection: VerticalDirection.down,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: const [
                    IconButton(
                        onPressed: null,
                        icon: Icon(Icons.add)
                    )
                  ],
                ),
                Column(
                  children: [
                    ListView(
                      padding: EdgeInsets.zero,
                      children: const [
                        DrawerHeader(
                            decoration: BoxDecoration(
                              color: Colors.blue,
                            ),
                          padding: EdgeInsets.zero,
                          child: Text("Drawer Header")
                        )
                      ],
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        backgroundColor: Colors.green,
        child: const Icon(Icons.add)
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
