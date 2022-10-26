import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.network(
              "https://images.unsplash.com/photo-1537202108838-e7072bad1927",
              fit: BoxFit.cover,
            ),
            Positioned(
              left: 20,
              bottom: 20,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Gestión del Conocimiento",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "MGETI-15: Fraternidad Ford",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        selectedItemColor: Colors.blue[800],
        unselectedItemColor: Colors.blue[400],
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.category_sharp), label: "Categorías"),
          BottomNavigationBarItem(icon: Icon(Icons.list_alt), label: "Temas"),
          BottomNavigationBarItem(icon: Icon(Icons.help), label: "Acerca de"),
        ],
      ),
    );

    //   child: Container(
    //     decoration: const BoxDecoration(
    //       image: DecorationImage(
    //         image: NetworkImage("https://images.unsplash.com/photo-1537202108838-e7072bad1927"),
    //         fit: BoxFit.cover,
    //       )
    //     ),
    //   ),
    // ),
  }
}
