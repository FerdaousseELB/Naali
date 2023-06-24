import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:naali/ui.pages/Acceuil.page.dart';
import 'package:naali/ui.pages/contact.page.dart';
import 'package:naali/ui.pages/gummies.page.dart';
import 'package:naali/ui.pages/infusions.page.dart';
import 'package:naali/ui.pages/missions.page.dart';
import 'package:naali/ui.pages/safran.page.dart';

void main() => runApp(
  DevicePreview(
    enabled: true,
    tools: const [
      ...DevicePreview.defaultTools
    ],
    builder: (context) => const MyApp(),
  ),
);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const SplashScreen(),
      routes: {
        "/Acceuil": (context) => const Acceuil(),
        "/Gummies": (context) => const Gummies(),
        "/Infusion": (context) => const Infusion(),
        "/Safran": (context) => const Safran(),
        "/Contact": (context) => const Contact(),
        "/Missions": (context) => const Missions(),

      },
      theme: ThemeData(
        primarySwatch: Colors.purple,
        // Specify the theme
      ),
      //initialRoute: "/Acceuil",
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    );
    _animation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(_animationController)
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          Navigator.pushReplacementNamed(context, "/Acceuil");
        }
      });

    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          AnimatedBuilder(
            animation: _animationController,
            builder: (context, child) {
              return Opacity(
                opacity: _animation.value,
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  child: Image.asset(
                    'images/fleur.png', // Remplacez 'assets/image.png' par le chemin de votre image
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
