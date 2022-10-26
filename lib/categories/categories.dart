import 'package:flutter/material.dart';
import 'package:gcon_fe/categories/categories_item.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Categorias'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            for (final category in categoriesList)
              CategoriesListItem(
                imageUrl: category.imageUrl,
                name: category.name,
                subtitle: category.subtitle,
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
          BottomNavigationBarItem(icon: Icon(Icons.category_sharp), label: "Categorías"),
          BottomNavigationBarItem(icon: Icon(Icons.list_alt), label: "Temas"),
          BottomNavigationBarItem(icon: Icon(Icons.help), label: "Acerca de"),
        ],
      ),
    );
  }
}

class CategoriesItems {
  const CategoriesItems({
    required this.name,
    required this.subtitle,
    required this.imageUrl,
  });

  final String name;
  final String subtitle;
  final String imageUrl;
}

const urlPrefix =
    'https://docs.flutter.dev/cookbook/img-files/effects/parallax';
const categoriesList = [
  CategoriesItems(
    name: 'Modelos Gestión del Conocimiento',
    subtitle: 'Diferentes Modelos de Gestión',
    imageUrl: 'https://images.unsplash.com/photo-1524995997946-a1c2e315a42f',
  ),
  CategoriesItems(
    name: 'Conocimiento Tácito',
    subtitle: "Caracterísiticas del Conocimiento Tácito",
    imageUrl: 'https://images.unsplash.com/photo-1523215122-26803239f41f',
  ),
  CategoriesItems(
    name: 'Conocimiento Explícito',
    subtitle: 'Caracterísiticas del Conocimiento Explícito',
    imageUrl: 'https://images.unsplash.com/photo-1532012197267-da84d127e765',
  ),
  CategoriesItems(
    name: 'Vitznau',
    subtitle: 'Switzerland',
    imageUrl: '$urlPrefix/04-vitznau.jpg',
  ),
  CategoriesItems(
    name: 'Bali',
    subtitle: 'Indonesia',
    imageUrl: '$urlPrefix/05-bali.jpg',
  ),
  CategoriesItems(
    name: 'Mexico City',
    subtitle: 'Mexico',
    imageUrl: '$urlPrefix/06-mexico-city.jpg',
  ),
  CategoriesItems(
    name: 'Cairo',
    subtitle: 'Egypt',
    imageUrl: '$urlPrefix/07-cairo.jpg',
  ),
];
