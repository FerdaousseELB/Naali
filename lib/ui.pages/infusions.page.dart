import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:naali/ui.pages/ui.widgets/boutonAcheter.widget.dart';
import 'package:naali/ui.pages/ui.widgets/drawer.widget.dart';

class Infusion extends StatelessWidget {
  const Infusion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      appBar: AppBar(
        title: const Text('Infusions'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            const Text(
              'Infusion au safran',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.purple,
              ),
            ),
            const SizedBox(height: 20),
            Image.asset(
              'images/infusion.jpg',
              width: 350,
              height: 250,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'Sensation de jambes lourdes, de gonflement avant et pendant vos règles ? Simplement besoin de détente, de relaxation naturelle ?\n Testez ce savoureux mélange drainant et relaxant de plantes et de safran pour soulager efficacement les jambes lourdes et la rétention d'' eau avant et pendant les règles.\n L'' infusion offre un goût délicat avec des notes douces et florales qui évoquent la lavande, et une touche subtilement épicée qui rappelle le safran.\n Temps d'' infusion : 2 à 3 minutes\nDosage : 2,5g dans 300ml d'' eau\nTempérature : 80-90°C',
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
                    padding:
                    const EdgeInsets.symmetric(vertical: 14.0, horizontal: 16.0),
                    child: const Text(
                      'Prix : 14.90 €',
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
                          url: 'https://naali.fr/products/infusion-jambes-legeres-osmose',
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
