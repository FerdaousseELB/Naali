import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:naali/ui.pages/ui.widgets/drawer.widget.dart';
import 'package:naali/ui.pages/ui.widgets/footer.widget.dart';

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
                          width: 100,
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
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'Le safran, connu pour ses propriétés médicinales, est un trésor de la nature qui change votre quotidien.\nEn plus de son goût unique, le safran est un puissant antioxydant, anti-inflammatoire et neuro relaxant.\nLe safran stimule les sentiments de bonheur, de calme et de sérénité.\n'
                'Combat le stress, réduit l'
                'anxiété et la fatigue.\nAméliore l'
                'humeur et équilibre les émotions.\n',
                style: GoogleFonts.roboto(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
            Footer(5 , backgroundColor: Colors.blue),
          ],
        ),
      ),
    );
  }
}
