import 'package:flutter/material.dart';

class SliedInfo {
  final String title;
  final String caption;
  final String imageUrl;

  SliedInfo(this.title, this.caption, this.imageUrl);
}

final slides = <SliedInfo>[
  SliedInfo(
    'Busca la comida',
    'Consectetur quis reprehenderit quis consectetur id.',
    'assets/images/1.png',
  ),
  SliedInfo(
    'Entrega rápida',
    'Magna voluptate sint do laborum mollit amet.',
    'assets/images/2.png',
  ),
  SliedInfo(
    'Disfruta la comida',
    'Officia ad aliqua laborum ullamco aute sint ea proident qui voluptate ullamco pariatur.',
    'assets/images/3.png',
  ),
];

class AppTutorialScreen extends StatelessWidget {
  static const name = 'tutorial_screen';

  const AppTutorialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const BouncingScrollPhysics(),
        children: slides
            .map(
              (slideData) => _Slide(
                title: slideData.title,
                caption: slideData.caption,
                imageUrl: slideData.imageUrl,
              ),
            )
            .toList(),
      ),
    );
  }
}

class _Slide extends StatelessWidget {
  final String title;
  final String caption;
  final String imageUrl;

  const _Slide({
    required this.title,
    required this.caption,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
