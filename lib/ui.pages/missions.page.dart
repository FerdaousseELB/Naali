import 'package:flutter/material.dart';
import 'package:naali/ui.pages/ui.widgets/drawer.widget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:naali/ui.pages/ui.widgets/pointsFort.widget.dart';

class Missions extends StatelessWidget {
  const Missions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      appBar: AppBar(
        title: const Text('Nos missions'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // **************************** block 01 ****************************************************
            Container(
             // width: 350,
              //height: 350,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/mission.jpg'), // Remplacez par le chemin de votre image de fond
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(70),
                child: Column(
                  children: const [
                    Text(
                      'Notre mission',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Améliorer l\'accès à l\'éducation aux\nfilles/femmes en Afghanistan',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,

                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'Chaque enfant mérite d’aller à l’école, mais plusieurs décennies de conflit ont rendu ce\n droit quasiment inaccessible dans certaines régions d’Afghanistan',
                style: GoogleFonts.roboto(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'L’éducation est la pierre angulaire du plan de l’Afghanistan pour le développement et la\ncroissance économique. Toutefois, il est extrêmement difficile de garantir l’accès à l’école\ndans certaines régions du pays. Dans les zones les plus reculées, les possibilités\nd’éducation peuvent être limitées et difficiles d’accès, voire inexistantes.',
                style: GoogleFonts.roboto(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'Les distances entre les villages sont parfois grandes, et le trajet pour se rendre à l’école\npeut être dangereux pour les jeunes enfants, les enseignantes et les enseignants.\nL’inquiétude pour la sécurité pousse d’ailleurs souvent les parents à ne pas envoyer leurs\nenfants à l’école, particulièrement les filles.',
                style: GoogleFonts.roboto(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            // *************************************** block 02 *************************************************//
            const SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Image.asset(
                      'images/nosMission01.jpg',
                      width: 250,
                      height: 500,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Le droit d\'apprendre',
                          style: GoogleFonts.roboto(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          'Ces filles (et femmes) méritent une voix. Elles méritent\nd\'avoir le droit d\'apprendre.',
                          style: GoogleFonts.roboto(
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        const SizedBox(height: 10),
                        Text(
                          'C\'est pourquoi nous sommes fiers de nous associer à\nCODE TO INSPIRE.',
                          style: GoogleFonts.roboto(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        const SizedBox(height: 10),
                        Text(
                          'Code to Inspire (CTI) est la première académie de codage\npour les filles à Herat, en Afghanistan. Fondée par\nFereshteh Forough en 2015, CTI a donné à plus de 100\nétudiantes les compétences et la confiance nécessaires\npour coder, construire des applications et générer des\nopportunités de travail pour elles-mêmes.',
                          style: GoogleFonts.roboto(
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        const SizedBox(height: 10),
                        Text(
                          'CTI croit en la nécessité de donner à ces jeunes\nentrepreneuses de la technologie les dernières\ncompétences, notamment des cours de développement\nWeb, de développement de jeux, de développement\nd\'applications mobiles et de conception graphique.',
                          style: GoogleFonts.roboto(
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 10),
                ],
              ),
            ),
            // ******************************************* block 03 ****************************************************//
            const SizedBox(height: 10),
            Container(
              height: 100,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.purple.shade100,
                    Colors.purple,
                  ],
                ),
              ),
              child: Center(
                child: Text(
                  "Chaque commande passée sur le site nous permettra de financer\nune heure d'école pour une jeune femme",
                  style: GoogleFonts.roboto(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Ensemble, nous souhaitons fournir aux filles (et aux garçons) l\'éducation dont ils ont\n besoin pour pouvoir rêver et surtout réaliser leurs rêves. Nous essayons également \nde mobiliser les familles et les communautés pour qu\'elles participent à un changement \nd\'attitude fondamental vis-à-vis des conséquences néfastes du manque \nd\'éducation des enfants et surtout des filles/femmes. ',
              style: GoogleFonts.roboto(
                fontSize: 12,
                fontWeight: FontWeight.normal,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
//***************************************** block 04 ********************************************************//
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Image.asset(
                      'images/mission1.jpg',
                      width: 150,
                      height: 250,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'NOUS TRAVAILLONS POUR UN AVENIR OÙ LES FEMMES COMPRENNENT ET EXERCENT LEURS DROITS',
                          style: GoogleFonts.roboto(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          'Nous travaillons pour un avenir où les enfants comprennent et exercent \n leurs droits. Un avenir où elles sont capables de faire des choix éclairés \nsur le genre de vie qu\'elles veulent mener. Cette liberté exige que les\n filles (et les garçons !) puissent avoir accès à l\'éducation, à \nl\'apprentissage. Evidemment ce sera compliqué mais c\'est possible.\n Avec votre aide, nous espérons y parvenir.',
                          style: GoogleFonts.roboto(
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        const SizedBox(height: 10),

                      ],
                    ),
                  ),
                  const SizedBox(width: 10),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
