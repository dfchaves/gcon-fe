import 'package:flutter/material.dart';
import 'package:gcon_fe/categories/categories_item.dart';

import '../utils/BottonNavigator.dart';

class Categories extends StatefulWidget {
  const Categories({
    super.key,
    required this.restorationId,
  });

  final String restorationId;

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> with RestorationMixin {
  final RestorableInt _currentIndex = RestorableInt(0);

  @override
  String get restorationId => widget.restorationId;

  @override
  void restoreState(RestorationBucket? oldBucket, bool initialRestore) {
    registerForRestoration(_currentIndex, 'bottom_navigation_tab_index');
  }

  @override
  void dispose() {
    _currentIndex.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    var colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Categorias'),
        backgroundColor: Colors.black45,
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
        type: BottomNavigationBarType.fixed,
        selectedFontSize: textTheme.caption!.fontSize!,
        unselectedFontSize: textTheme.caption!.fontSize!,
        currentIndex: _currentIndex.value,
        onTap: (index) {
          setState(() {
            if (index == 1) {
              Navigator.pushNamed(context, "/second");
            }
            _currentIndex.value = index;
          });
        },
        backgroundColor: Colors.black45,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white54,
        items: navigatorList,
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
