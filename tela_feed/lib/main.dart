import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFF5DD9C1)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: ''),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> items =
      List<String>.generate(10, (index) => "Item ${index + 1}");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        leading: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconButton(
              icon: Image.asset('assets/Logout.png'),
              onPressed: () {
                // Ação do ícone de menu
              },
            ),
          ],
        ),
        actions: [
          IconButton(
              onPressed: () => {}, icon: Image.asset('assets/Search.png')),
        ],
      ),
      backgroundColor: const Color(0XFF1B2432),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(10.0),
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Color(0xFF121420),
              borderRadius: BorderRadius.circular(16.0),
            ),
            height: 100.0,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment
                  .spaceEvenly, // Distribui os ícones igualmente
              children: [
                const Text(
                  "Tudo",
                ),
                IconButton(
                  icon:
                      const Icon(Icons.flash_on_outlined, color: Colors.white),
                  onPressed: () {
                    // Ação do primeiro ícone
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.emoji_emotions_outlined,
                      color: Colors.white),
                  onPressed: () {
                    // Ação do primeiro ícone
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.location_on_outlined,
                      color: Colors.white),
                  onPressed: () {
                    // Ação do primeiro ícone
                  },
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(16.0),
              itemCount: items.length,
              itemBuilder: (context, index) {
                return Card(
                  color: const Color(0xFF121420),
                  child: ListTile(
                    leading: Image.asset(
                      'assets/placeholder.png',
                      height: 50,
                      fit: BoxFit.cover,
                    ),
                    title: Text(
                      items[index],
                      style: const TextStyle(color: Colors.white),
                    ),
                    subtitle: const Text(
                      'Subtítulo do item',
                      style: TextStyle(color: Colors.white70),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: const Color(0xFF5DD9C1),
        child: Row(
          mainAxisAlignment:
              MainAxisAlignment.spaceEvenly, // use whichever suits your need
          children: [
            IconButton(
              icon: Icon(Icons.home, size: 40.0, color: Colors.black),
              onPressed: () {
                // Ação do ícone de menu
              },
            ),
            IconButton(
              icon: Icon(Icons.favorite, size: 40.0, color: Colors.black),
              onPressed: () {
                // Ação do ícone de menu
              },
            ),
            IconButton(
              icon: Icon(Icons.notifications, size: 40.0, color: Colors.black),
              onPressed: () {
                // Ação do ícone de menu
              },
            ),
            IconButton(
              icon: Icon(
                Icons.person,
                size: 40.0,
                color: Colors.black,
              ),
              onPressed: () {
                // Ação do ícone de menu
              },
            ),
          ],
        ),
      ),
    );
  }
}
