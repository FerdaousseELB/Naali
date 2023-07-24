import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:naali/ui.pages/ui.widgets/drawer.widget.dart';
import 'package:naali/ui.pages/ui.widgets/footer.widget.dart';
import 'package:naali/ui.pages/ui.widgets/headerPromo.widget.dart';
import 'package:naali/ui.pages/ui.widgets/pointsFort.widget.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Acceuil extends StatefulWidget {
  const Acceuil({Key? key});

  @override
  _AcceuilState createState() => _AcceuilState();
}

class _AcceuilState extends State<Acceuil> {
  late PageController _pageController;
  late Timer _timer;
  int _currentPage = 0;
  int _numPages = 7; // Le nombre total d'images dans le carrousel
  List<String> _imageList = [
    'images/fleurSafran.jpg',
    'images/orouge.jpg',
    'images/mission.jpg',
    'images/mission1.jpg',
    'images/gummies.jpg',
    'images/infusion.jpg',
    'images/safran.jpg',
  ]; // Liste des chemins d'accès aux images
  List<String> promo = [
    'promotion 01',
    'Livraison gratuite',
    'promotion 3',
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentPage);

    // Démarrer le timer pour changer d'image toutes les 3 secondes
    _timer = Timer.periodic(Duration(seconds: 3), (Timer timer) {
      _currentPage = (_currentPage + 1) % _numPages;
      // Changer de page dans le carrousel
      _pageController.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  void dispose() {
    _timer.cancel(); // Arrêter le timer lorsqu'on quitte la page
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      appBar: AppBar(
        title: const Text('Naali'),
      ),
      body: SingleChildScrollView(
        child: Column(
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
            //HeaderPromo(),
            const SizedBox(height: 30),
            const Text(
              'Naali vous propose des compléments alimentaires riches en safran',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.purple,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: SizedBox(
                height: 300,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: PageView.builder(
                    controller: _pageController,
                    onPageChanged: (int page) {
                      setState(() {
                        _currentPage = page;
                      });
                    },
                    itemCount: _numPages,
                    itemBuilder: (BuildContext context, int index) {
                      final actualIndex = index % _imageList.length;
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          _imageList[actualIndex],
                          fit: BoxFit.cover,
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Text(
                'Notre engagement en faveur d\'un safran de qualité inégalée commence avec nos fermiers, nos champs, nos graines et notre sol, et se poursuit tout au long de notre processus d\'extraction.',
                style: GoogleFonts.roboto(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 50),
            //**************************************** Block origine ********************************
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Image.asset(
                      'images/origine.jpg',
                      width: 150,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Origine',
                          style: GoogleFonts.roboto(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          'Notre safran provient tout droit de l\'Orient, de l\'Afghanistan et de ces hauts plateaux afghans situés sur l\'ancienne route de la soie. Nous travaillons avec des agricultrices/agriculteurs qui se transmettent le savoir du safran depuis des générations. Il faut avoir travaillé plus de 20 ans dans la culture du safran, dit-on à Hérat, pour être considéré comme un expert de l\'épice !\n',
                          style: GoogleFonts.roboto(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                'Le safran est cultivé depuis des siècles en Afghanistan. Une des plus anciennes plantes naturelles qui a attiré le monde par ses caractéristiques significatives telles que la couleur, le goût et l'' arôme. Le safran est la plante pharmaceutique la plus puissante au monde.',
                style: GoogleFonts.roboto(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
            const SizedBox(height: 20),
            //*****************************  Block culture ************************************************
            const SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                children: [
                  Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Culture',
                        style: GoogleFonts.roboto(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'Situées dans la province d’Herat, les terres cultivées par nos fermes partenaires sont considérées comme le climat idéal pour la culture. Il ne fait aucun doute que le safran est l'' une des cultures qui s'' adaptent parfaitement aux conditions climatiques de l'' Afghanistan. Les hivers doux avec de fortes chutes de neige et les étés chauds sont excellents ; ce qui signifie que le climat de certaines parties de l\'Afghanistan, est très adapté à la production de safran.\n',
                        style: GoogleFonts.roboto(
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                ),
                  const SizedBox(width: 10),

                  Expanded(
                    flex: 1,
                    child: Image.asset(
                      'images/fleurSafran.jpg',
                      width: 150,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 10),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                'L\'exploitation utilise également des techniques de culture ancestrales qui ont leurs preuves depuis des centaines d\'années - sans OGM, sans pesticides..L\'exploitation utilise également des techniques de culture ancestrales qui ont leurs preuves depuis des centaines d’années - sans OGM, sans pesticides..',
                style: GoogleFonts.roboto(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
            const SizedBox(height: 20),
//********************************** Block extraction ********************************************
            const SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                children: [

                  Expanded(
                    flex: 1,
                    child: Image.asset(
                      'images/extraction.jpg',
                      width: 150,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Extraction',
                          style: GoogleFonts.roboto(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          'La façon dont les molécules actives (safranal, crocine et picocrocine) sont extraites du safran est vraiment importante. Nous avons développé pendant plus d’un an et demi un procédé d’extraction innovant nous permettant de conserver toute la puissance de la plante !\n',
                          style: GoogleFonts.roboto(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                'Exempt d\'hydrocarbures, de toxines et de métaux lourds, qui peuvent entrer en contact avec la plante ou être des sous-produits/composants résiduels lorsque d\'autres méthodes de solvant sont utilisées. C\'est la norme pour les produits alimentaires.\n Tout au long du processus, nous pouvons contrôler dynamiquement la température pour cibler les molécules actives qui donnent au safran toute sa puissance, comme le safranal, la crocine et autres éléments.',
                style: GoogleFonts.roboto(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
            const SizedBox(height: 20),
            const Footer(rating: 4),
           // const SizedBox(height: 20),
            //const PointsFort(),
          ]
      ),
      ),);
  }
}
