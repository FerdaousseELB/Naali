import 'package:flutter/material.dart';
import 'package:naali/ui.pages/ui.widgets/boutonAcheter.widget.dart';
import 'package:naali/ui.pages/ui.widgets/drawer.widget.dart';
import 'package:google_fonts/google_fonts.dart';

class Gummies extends StatelessWidget {
  const Gummies({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      appBar: AppBar(
        title: const Text('Gummies'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            const Text(
              'Gummies anti-stress au safran',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.purple,
              ),
            ),
            const SizedBox(height: 20),
            Image.asset(
              'images/gummies.jpg',
              width: 350,
              height: 250,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'Avez-vous tout testé pour réduire votre stress ?\nLe Safran, anti-stress naturel puissant, est considéré depuis toujours comme l\'épice du bonheur.\nDétendez-vous naturellement en prenant 2 gommes par jour.\nLe safran réduit le stress, l\'anxiété et la mauvaise humeur. Agit en 30 minutes.\nC\'est prouvé par la science.\nCompléments alimentaires au safran pour vous sentir plus calme et plus détendu. Contribue à améliorer votre sommeil et bien-être général.\nDécouvrez les bienfaits du safran en nous suivant sur Instagram et TikTok @naali_fr',
                style: GoogleFonts.roboto(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.purple,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      padding: const EdgeInsets.symmetric(
                          vertical: 14.0, horizontal: 16.0),
                      child: const Text(
                        'Prix : 24.90 €',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),

                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.purple,  // Modification de la couleur de fond en violet
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(20.0),
                        border: Border.all(color: Colors.purple, width: 2.0),
                      ),
                      padding: const EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 16.0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.shopping_cart_sharp,
                            color: Colors.white,  // Modification de la couleur de l'icône en blanc
                            size: 25,
                          ),
                          const SizedBox(width: 5),
                          MonBoutonAcheter(
                            url: 'https://naali.fr/products/gummies-anti-stress-au-safran-preco',
                            buttonText: 'Acheter',
                            textColor: Colors.white,  // Modification de la couleur du texte en blanc
                          ),
                        ],
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
