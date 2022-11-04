import 'package:flutter/material.dart';

class HomeAll extends StatelessWidget {
  const HomeAll({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.network(
            "https://images.unsplash.com/photo-1501168025369-84d106f7a5eb",
            fit: BoxFit.cover,
          ),
          Positioned(
            left: 20,
            bottom: 20,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                SizedBox(
                  width: 300,
                  child: Text(
                    "Gestión del Conocimiento",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  width: 300,
                  child: Text(
                    "MGETI-15: Fraternidad Ford",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
