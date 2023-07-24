import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HeaderPromo extends StatelessWidget {
  HeaderPromo({super.key});
  final List<String> promo = [
    'promotion 01',
    'Livraison gratuite',
    'promotion 3',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: [
          CarouselSlider(
            items: promo.map((text) {
              return Container(
                color: Colors.black,
                //width: 900,
                margin: const EdgeInsets.all(1.0),
                child: Center(
                  child: Text(
                    text,
                    style: const TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white, // Texte en blanc
                    ),
                  ),
                ),
              );
            }).toList(),
            options: CarouselOptions(
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 3),
              aspectRatio: 10.0,
              enlargeCenterPage: true,
              scrollDirection: Axis.horizontal,
              reverse: true,
              viewportFraction:
              2.5, // Ajuster la valeur pour enlever l'espace blanc
            ),
          ),
          // Ajoutez d'autres éléments à afficher dans le reste de l'écran
        ],
      ),
    );
  }
}
