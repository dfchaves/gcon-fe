import 'package:flutter/material.dart';
import 'package:gcon_fe/controller/features_controller.dart';
import 'package:gcon_fe/models/features_model.dart';
import '../utils/button_navigator.dart';
import '../utils/item_list.dart';
import '../utils/scroll_view_item.dart';

class FeaturesView extends StatefulWidget {
  const FeaturesView({
    super.key,
  });

  @override
  State<FeaturesView> createState() => _FeaturesViewState();
}

class _FeaturesViewState extends State<FeaturesView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Title'),
        backgroundColor: Colors.black45,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ScrollViewItem(
              name: "",
              imageUrl:
                  "https://images.unsplash.com/photo-1664575196079-9ac04582854b",
              subtitle: "",
            ),
            // Padding(padding: EdgeInsets.all(0))
            // SizedBox(
            //   child:
            //       Title(color: Colors.black, child: const Text("Hello World")),
            // ),
            const Text("Sub Title"),
            const SizedBox.square(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
                child: Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum"),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavBar(
        currentIndexParam: 2,
      ),
    );
  }
}
