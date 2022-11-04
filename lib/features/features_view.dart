import 'package:flutter/material.dart';
import 'package:gcon_fe/controller/features_controller.dart';
import '../models/features_model.dart';
import '../utils/button_navigator.dart';
import '../utils/scroll_view_item.dart';

class FeaturesView extends StatefulWidget {
  const FeaturesView({
    super.key,
    required this.id,
  });

  final String id;

  @override
  State<FeaturesView> createState() => _FeaturesViewState();
}

class _FeaturesViewState extends State<FeaturesView> {
  late Future<FeaturesModel> futureFeatures;

  @override
  void initState() {
    super.initState();
    futureFeatures = fetchUniqueFeature(widget.id);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: FutureBuilder<FeaturesModel>(
            future: futureFeatures,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text(snapshot.data!.title);
              }
              return Text("Gestión del Conocimiento");
            }),
        backgroundColor: Colors.black45,
      ),
      body: FutureBuilder<FeaturesModel>(
        future: futureFeatures,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            FeaturesModel finalModel = FeaturesModel(
                id: snapshot.data!.id,
                title: snapshot.data!.title,
                description: snapshot.data!.description,
                content: snapshot.data!.content,
                image: snapshot.data!.image,
                found: snapshot.data!.found,
                category: snapshot.data!.category);
            return SingleChildScrollView(
              child: Column(
                children: [
                  ScrollViewItem(
                    id: "",
                    name: "",
                    imageUrl: finalModel.image,
                    subtitle: "",
                    transitionCategories: false,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 8.0),
                    child: Text(
                      finalModel.title,
                      style: const TextStyle(
                          color: Colors.black54,
                          fontSize: 26,
                          decorationStyle: TextDecorationStyle.solid),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 8.0),
                    child: Text(
                      finalModel.description,
                      style: const TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Colors.black45,
                        fontSize: 18,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox.square(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 16.0, horizontal: 16.0),
                      child: Text(finalModel.content,
                          style: const TextStyle(
                              color: Colors.black87, fontSize: 16),
                          textAlign: TextAlign.justify),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 8.0),
                    child: Text(
                      finalModel.found,
                      style: const TextStyle(
                        fontStyle: FontStyle.normal,
                        color: Colors.blue,
                        fontSize: 12,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            );
          }
          // By default, show a loading spinner.
          return const Center(
              child: CircularProgressIndicator(
            color: Colors.black45,
          ));
        },
      ),
      bottomNavigationBar: const BottomNavBar(
        currentIndexParam: 2,
      ),
    );
  }
}
