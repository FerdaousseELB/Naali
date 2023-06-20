import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:naali/ui.pages/ui.widgets/drawer.widget.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  void _launchURL(String url) async {
    if (await canLaunch(Uri.parse(url).toString())) {
      await launch(Uri.parse(url).toString());
    } else {
      throw 'Impossible de lancer l\'URL : $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    final Uri whatsapp = Uri.parse('https://wa.me/33783753682');

    return Scaffold(
      drawer: const MyDrawer(),
      appBar: AppBar(
        title: const Text('Contact'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 30),
            const ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.orange,
                child: IconTheme(
                  data: IconThemeData(color: Colors.white),
                  child: Icon(Icons.location_on),
                ),
              ),
              title: Text('Adresse postale'),
              subtitle: Text('Naali, Lyon, France'),
            ),
            ListTile(
              leading: const CircleAvatar(
                backgroundColor: Colors.orange,
                child: IconTheme(
                  data: IconThemeData(color: Colors.white),
                  child: Icon(Icons.email),
                ),
              ),
              title: const Text('E-mail'),
              subtitle: const Text('bonjour@naali.fr'),
              onTap: () => _launchURL('mailto:bonjour@naali.fr'),
            ),
            ListTile(
              leading: const CircleAvatar(
                backgroundColor: Colors.green,
                child: IconTheme(
                  data: IconThemeData(color: Colors.white),
                  child: Icon(FontAwesomeIcons.whatsapp),
                ),
              ),
              title: const Text('WhatsApp'),
              subtitle: const Text('0636119343'),
              onTap: () => launch(whatsapp.toString()),
            ),
            ListTile(
              leading: const CircleAvatar(
                backgroundColor: Colors.blueAccent,
                child: IconTheme(
                  data: IconThemeData(color: Colors.white),
                  child: Icon(Icons.facebook),
                ),
              ),
              title: const Text('Facebook'),
              subtitle: const Text('facebook.com/naali'),
              onTap: () => _launchURL('https://www.facebook.com/naali01'),
            ),
            ListTile(
              leading: const CircleAvatar(
                backgroundColor: Colors.blue,
                child: IconTheme(
                  data: IconThemeData(color: Colors.white),
                  child: Icon(FontAwesomeIcons.twitter),
                ),
              ),
              title: const Text('Twitter'),
              subtitle: const Text('@entreprise'),
              onTap: () => _launchURL('https://twitter.com/entreprise'),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.blue,
                child: IconTheme(
                  data: IconThemeData(color: Colors.white),
                  child: Icon(FontAwesomeIcons.linkedin),
                ),
              ),
              title: const Text('LinkedIn'),
              subtitle: const Text('@naali'),
              onTap: () => _launchURL('https://www.linkedin.com/company/naali'),
            ),
          ],
        ),
      ),
    );
  }
}
