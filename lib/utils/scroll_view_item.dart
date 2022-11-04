import 'package:flutter/material.dart';
import 'package:gcon_fe/features/features_all.dart';
import '../features/features_view.dart';
import '../paralax/parallax.dart';

@immutable
class ScrollViewItem extends StatefulWidget {
  const ScrollViewItem({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.subtitle,
    required this.transitionCategories,
    required this.id,
  });

  final String imageUrl;
  final String name;
  final String subtitle;
  final bool transitionCategories;
  final String id;

  @override
  State<ScrollViewItem> createState() => _ScrollViewItemState();
}

class _ScrollViewItemState extends State<ScrollViewItem> {
  @override
  Widget build(BuildContext context) {
    bool transition = widget.transitionCategories;
    String id = widget.id;

    return GestureDetector(
      onTap: () {
        if (transition) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Themes(id: id),
            ),
          );
        } else {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => FeaturesView(id: id),
            ),
          );
        }
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: AspectRatio(
          aspectRatio: 16 / 9,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Stack(
              children: [
                _buildParallaxBackground(context),
                _buildGradient(),
                _buildTitleAndSubtitle(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  final GlobalKey _backgroundImageKey = GlobalKey();

  Widget _buildParallaxBackground(BuildContext context) {
    return Flow(
      delegate: ParallaxFlowDelegate(
        scrollable: Scrollable.of(context)!,
        listItemContext: context,
        backgroundImageKey: _backgroundImageKey,
      ),
      children: [
        Image.network(
          widget.imageUrl,
          key: _backgroundImageKey,
          fit: BoxFit.cover,
          cacheWidth: 500,
          cacheHeight: 500,
        ),
      ],
    );
  }

  Widget _buildGradient() {
    return Positioned.fill(
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.transparent, Colors.black.withOpacity(0.7)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: const [0.6, 0.95],
          ),
        ),
      ),
    );
  }

  Widget _buildTitleAndSubtitle() {
    return Positioned(
      left: 20,
      bottom: 20,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 300,
            child: Text(
              widget.name,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            width: 300,
            child: Text(
              widget.subtitle,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
