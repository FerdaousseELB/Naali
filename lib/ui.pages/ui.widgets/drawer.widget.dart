import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.white,
                  Colors.purple,
                ],
              ),
            ),
            child: Center(
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('images/logoNaali.jpg'),
              ),
            ),
          ),
          ListTile(
            title: const Text(
              'Acceuil',
              style: TextStyle(fontSize: 22),
            ),
            leading: const Icon(
              Icons.home,
              color: Colors.purple,
            ),
            trailing: const Icon(
              Icons.arrow_right,
              color: Colors.purple,
            ),
            onTap: () {
              Navigator.pushNamed(context, '/Acceuil');
            },
          ),
          const Divider(
            height: 4,
            color: Colors.purple,
          ),

          ExpansionTile(
            title: Text('Nos produits',style: TextStyle(fontSize: 22),),
              leading: const Icon(
              Icons.production_quantity_limits,
              color: Colors.purple,
            ),
              trailing: const Icon(
                Icons.arrow_right,
                color: Colors.purple,
              ),
            childrenPadding: EdgeInsets.only(left: 20.0),
            children: <Widget>[
              ListTile(
                title: const Text(
                  'Gummies',
                  style: TextStyle(fontSize: 17),
                ),
                leading: const Icon(
                  Icons.local_florist_outlined,
                  color: Colors.purple,
                ),
                trailing: const Icon(
                  Icons.arrow_right,
                  color: Colors.purple,
                ),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.pushNamed(context, '/Gummies');
                },
              ),
              const Divider(
                height: 4,
                color: Colors.purple,
              ),
              ListTile(
                title: const Text(
                  'Infusion',
                  style: TextStyle(fontSize: 17),
                ),
                leading: const Icon(
                  Icons.local_florist_outlined,
                  color: Colors.purple,
                ),
                trailing: const Icon(
                  Icons.arrow_right,
                  color: Colors.purple,
                ),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.pushNamed(context, '/Infusion');
                },
              ),
              const Divider(
                height: 4,
                color: Colors.purple,
              ),
              ListTile(
                title: const Text(
                  'Safran',
                  style: TextStyle(fontSize: 17),
                ),
                leading: const Icon(
                  Icons.local_florist_outlined,
                  color: Colors.purple,
                ),
                trailing: const Icon(
                  Icons.arrow_right,
                  color: Colors.purple,
                ),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.pushNamed(context, '/Safran');
                },
              ),
            ],
          ),

          const Divider(
            height: 4,
            color: Colors.purple,
          ),
          ListTile(
            title: const Text(
              'Nos missions',
              style: TextStyle(fontSize: 22),
            ),
            leading: const Icon(
              Icons.emoji_objects,
              color: Colors.purple,
            ),
            trailing: const Icon(
              Icons.arrow_right,
              color: Colors.purple,
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.pushNamed(context, '/Missions');
            },
          ),
          const Divider(
            height: 4,
            color: Colors.purple,
          ),
          ListTile(
            title: const Text(
              'Contact',
              style: TextStyle(fontSize: 22),
            ),
            leading: const Icon(
              Icons.contact_page,
              color: Colors.purple,
            ),
            trailing: const Icon(
              Icons.arrow_right,
              color: Colors.purple,
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.pushNamed(context, '/Contact');
            },
          ),
          const Divider(
            height: 4,
            color: Colors.purple,
          ),
        ],
      ),
    );
  }
}
