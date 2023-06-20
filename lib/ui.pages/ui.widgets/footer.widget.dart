import 'package:flutter/material.dart';

class Footer extends StatefulWidget {
  final int rating;
  Footer(this.rating, {super.key, required MaterialColor backgroundColor});

  @override
  _FooterState createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  int currentIndex = 0;
  int currentImage = 0;
  List<String> titres = [
    'Un excellent complément alimentaire au safran à ajouter à votre routine bien-être anti-stress.',
    'Naali est destiné à gagner sa place parmi les marques bien-être grâce à sa façon efficace, facile et délicieuse de combattre le stress.',
    'Efficace, délicieux et facile à emporter ! Mettez-le dans votre sac à main, laissez-le dans votre voiture pour tous ces petits moments où l\'on a besoin d\'un coup de pouce.',
  ];
  List<String> images = [
    'images/europe1.jpg',
    'images/forbes.jpg',
    'images/Elle.jpg',
  ];

  void goToPrevious() {
    setState(() {
      if (currentIndex > 0 && currentImage > 0) {
        currentIndex--;
        currentImage--;
      }
    });
  }

  void goToNext() {
    setState(() {
      if (currentIndex < titres.length - 1 && currentImage < images.length - 1) {
        currentIndex++;
        currentImage++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
   // Color.fromARGB(143, 143, 143, 143); // Footer background color
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: 8.0), // Espacement vertical
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            widget.rating,
                (index) => Icon(
              Icons.star,
              color: Colors.yellow,
              size: 24.0,
            ),
          ),
        ),
       // SizedBox(height: 8.0), // Espacement vertical
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                titres[currentIndex],
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.0,
                ),
              ),
             // SizedBox(height: 8.0),
              Image.asset(
                images[currentImage],
                height: 50.0,
                width: 50.0,
              ),
            ],
          ),
        ),
       // SizedBox(height: 8.0), // Espacement vertical
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: goToPrevious,
            ),
            IconButton(
              icon: Icon(Icons.arrow_forward),
              onPressed: goToNext,
            ),
          ],
        ),
      ],
    );
  }
}