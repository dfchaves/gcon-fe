import 'package:flutter/material.dart';

import '../utils/scroll_viewAll.dart';
import '../utils/button_navigator.dart';
import '../utils/item_list.dart';

class Themes extends StatefulWidget {
  const Themes({
    super.key,
  });

  @override
  State<Themes> createState() => _ThemesState();
}

class _ThemesState extends State<Themes> {
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Temas'),
          backgroundColor: Colors.black45,
          automaticallyImplyLeading: false,
        ),
        body: const ScrollViewItems(restorationId: '', currentList: itemList),
        bottomNavigationBar: const BottomNavBar(
          currentIndexParam: 2,
        ));
  }
}

const urlPrefix =
    'https://docs.flutter.dev/cookbook/img-files/effects/parallax';
const itemList = [
  ItemsList(
    name: 'Modelos Gestión de Conocimiento 1',
    subtitle: 'Diferentes Modelos de Gestión',
    imageUrl: 'https://images.unsplash.com/photo-1524995997946-a1c2e315a42f',
  ),
  ItemsList(
    name: 'Modelos Gestión de Conocimiento 2',
    subtitle: "Caracterísiticas del Conocimiento Tácito",
    imageUrl: 'https://images.unsplash.com/photo-1523215122-26803239f41f',
  ),
  ItemsList(
    name: 'Modelos Gestión de Conocimiento 3',
    subtitle: 'Caracterísiticas del Conocimiento Explícito',
    imageUrl: 'https://images.unsplash.com/photo-1532012197267-da84d127e765',
  ),
  ItemsList(
    name: 'Modelos Gestión de Conocimiento 4',
    subtitle: 'Switzerland',
    imageUrl: '$urlPrefix/04-vitznau.jpg',
  ),
  ItemsList(
    name: 'Modelos Gestión de Conocimiento 5',
    subtitle: 'Indonesia',
    imageUrl: '$urlPrefix/05-bali.jpg',
  ),
  ItemsList(
    name: 'Modelos Gestión de Conocimiento 6',
    subtitle: 'Mexico',
    imageUrl: '$urlPrefix/06-mexico-city.jpg',
  ),
  ItemsList(
    name: 'Modelos Gestión de Conocimiento 7',
    subtitle: 'Egypt',
    imageUrl: '$urlPrefix/07-cairo.jpg',
  ),
];
