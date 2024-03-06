import 'package:flutter/material.dart';

class IconLearnView extends StatelessWidget {
  IconLearnView({super.key});
  final IconSizes _iconSizes = IconSizes();
  final IconColors _iconColors = IconColors();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Icon Learn"),
      ),
      body: Column(
        children: [
          Icon(
            Icons.message_outlined,
            color: _iconColors.froly,
            size: _iconSizes.iconSmall,
          ),
          Icon(
            Icons.message_outlined,
            color: _iconColors.froly,
            size: _iconSizes.iconMedium,
          ),
          Icon(
            Icons.message_outlined,
            color: _iconColors.froly,
            size: _iconSizes.iconLarge,
          ),
        ],
      ),
    );
  }
}

class IconSizes {
  final double iconSmall = 32;
  final double iconMedium = 64;
  final double iconLarge = 128;
}

class IconColors {
  final Color froly = const Color.fromARGB(255, 214, 122, 116);
}
