import 'package:flutter/material.dart';
import '../utils/button_navigator.dart';
import '../utils/scroll_viewAll.dart';
import '../utils/item_list.dart';

class Categories extends StatefulWidget {
  const Categories({
    super.key,
  });

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Categorias'),
        backgroundColor: Colors.black45,
        automaticallyImplyLeading: false,
      ),
      body: const ScrollViewItems(restorationId: '',currentList: itemList),
      bottomNavigationBar: const BottomNavBar(currentIndexParam: 1,)
    );
  }
}

const urlPrefix =
    'https://docs.flutter.dev/cookbook/img-files/effects/parallax';
const itemList = [
  ItemsList(
    name: 'Modelos Gestión del Conocimiento',
    subtitle: 'Diferentes Modelos de Gestión',
    imageUrl: 'https://images.unsplash.com/photo-1524995997946-a1c2e315a42f',
  ),
  ItemsList(
    name: 'Conocimiento Tácito',
    subtitle: "Caracterísiticas del Conocimiento Tácito Y a veces es muy muy largo y no cabe",
    imageUrl: 'https://images.unsplash.com/photo-1523215122-26803239f41f',
  ),
  ItemsList(
    name: 'Conocimiento Explícito',
    subtitle: 'Caracterísiticas del Conocimiento Explícito',
    imageUrl: 'https://images.unsplash.com/photo-1532012197267-da84d127e765',
  ),
  ItemsList(
    name: 'Vitznau',
    subtitle: 'Switzerland',
    imageUrl: '$urlPrefix/04-vitznau.jpg',
  ),
  ItemsList(
    name: 'Bali',
    subtitle: 'Indonesia',
    imageUrl: '$urlPrefix/05-bali.jpg',
  ),
  ItemsList(
    name: 'Mexico City',
    subtitle: 'Mexico',
    imageUrl: '$urlPrefix/06-mexico-city.jpg',
  ),
  ItemsList(
    name: 'Cairo',
    subtitle: 'Egypt',
    imageUrl: '$urlPrefix/07-cairo.jpg',
  ),
];
