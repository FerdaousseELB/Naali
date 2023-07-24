import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MonBoutonAcheter extends StatelessWidget {
  final String url;
  final String buttonText;

  const MonBoutonAcheter({super.key, required this.url, required this.buttonText, required Color textColor});

  void _redirectionVersSiteWeb() async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Impossible de lancer l\'URL : $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: _redirectionVersSiteWeb,
      child: Text(buttonText),
    );
  }
}

class MonEcran extends StatelessWidget {
  const MonEcran({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mon Application'),
      ),
      body: const Center(
        child: MonBoutonAcheter(
          url: 'https://example.com',
          buttonText: 'Acheter maintenant', textColor: Colors.white,
        ),
      ),
    );
  }
}
