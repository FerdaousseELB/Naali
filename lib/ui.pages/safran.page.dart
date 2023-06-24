import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:naali/ui.pages/ui.widgets/boutonAcheter.widget.dart';
import 'package:naali/ui.pages/ui.widgets/drawer.widget.dart';

class Safran extends StatelessWidget {
  const Safran({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      appBar: AppBar(
        title: const Text('Safran en filaments'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            const Text(
              'Safran d\'exception 100% rouge - Super Negin',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.purple,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Image.asset(
              'images/safran.jpg',
              width: 350,
              height: 250,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'Ajoutez un goût, un parfum et une saveur incroyable à tous vos plats.\nLaissez-vous envoûter par son doux parfum et son goût inimitable qui apporteront à vos repas cette chaleureuse touche d’Orient si délicate. Ce safran afghan est si riche en arôme et en parfum que quelques grammes vous suffiront à sublimer des centaines de plats.\nLe safran a également de nombreuses vertus pour votre santé (anti-stress, anti-insomnie, antioxydant...).',
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
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.purple,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    padding: const EdgeInsets.symmetric(
                        vertical: 14.0, horizontal: 16.0),
                    child: const Text(
                      'Prix : 17.00 € / 1 gr',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.purple,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(20.0),
                      border: Border.all(color: Colors.purple, width: 2.0),
                    ),
                    padding: const EdgeInsets.symmetric(
                      vertical: 8.0,
                      horizontal: 16.0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.shopping_cart_sharp,
                          color: Colors.white,
                          size: 25,
                        ),
                        const SizedBox(width: 5),
                        MonBoutonAcheter(
                          url:
                              'https://naali.fr/products/safran-dexception-100-rouge-super-negin',
                          buttonText: 'Acheter',
                          textColor: Colors.white,
                        ),
                      ],
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
