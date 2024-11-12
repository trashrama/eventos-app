import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Feed',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF5DD9C1)),
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

  int _index = -1; // Índice do botão selecionado

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
              color: const Color(0xFF121420),
              borderRadius: BorderRadius.circular(16.0),
            ),
            height: 100.0,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    color: _index == 0
                        ? const Color(0XFF5DD9C1)
                        : const Color(0XFF957FEF),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Center(
                      child: InkWell(
                          onTap: () {
                            setState(() {
                              _index = _index == 0 ? -1 : 0;
                            });
                          },
                          child: const Text(
                            "Tudo",
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Color(0XFF121420),
                            ),
                          ))),
                ),
                Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    color: _index == 1
                        ? const Color(0XFF5DD9C1)
                        : const Color(0XFF957FEF),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Center(
                    child: IconButton(
                      icon: const Icon(Icons.flash_on_outlined,
                          size: 30.0, color: Color(0XFF121420)),
                      onPressed: () {
                        setState(() {
                          _index = _index == 1 ? -1 : 1;
                        });
                      },
                    ),
                  ),
                ),
                Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    color: _index == 2
                        ? const Color(0XFF5DD9C1)
                        : const Color(0XFF957FEF),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Center(
                    child: IconButton(
                      icon: const Icon(Icons.location_on_outlined,
                          size: 30.0, color: Color(0XFF121420)),
                      onPressed: () {
                        setState(() {
                          _index = _index == 2 ? -1 : 2;
                        });
                      },
                    ),
                  ),
                ),
                Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    color: _index == 3
                        ? const Color(0XFF5DD9C1)
                        : const Color(0XFF957FEF),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Center(
                    child: IconButton(
                      icon: const Icon(Icons.emoji_emotions_outlined,
                          size: 30.0, color: Color(0XFF121420)),
                      onPressed: () {
                        setState(() {
                          _index = _index == 3 ? -1 : 3;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(20.0),
              itemCount: items.length,
              itemBuilder: (context, index) {
                return Card(
                  color: const Color(0xFF121420),
                  margin: const EdgeInsets.symmetric(vertical: 8.0),
                  child: SizedBox(
                    height: 150,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 150,
                            width: 128,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              image: const DecorationImage(
                                image: AssetImage('assets/placeholder.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  items[index],
                                  style: const TextStyle(color: Colors.white),
                                ),
                                const SizedBox(height: 4),
                                const Text(
                                  'Subtítulo do item',
                                  style: TextStyle(color: Colors.white70),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
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
              icon: const Icon(Icons.home, size: 40.0, color: Colors.black),
              onPressed: () {
                // Ação do ícone de menu
              },
            ),
            IconButton(
              icon: const Icon(Icons.favorite, size: 40.0, color: Colors.black),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.notifications,
                  size: 40.0, color: Colors.black),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(
                Icons.person,
                size: 40.0,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
