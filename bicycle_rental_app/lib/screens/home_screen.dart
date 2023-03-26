import 'package:flutter/material.dart';
import 'package:bicycle_rental_app/screens/location_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Welcome to Rent a Bicycle!',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => LocationScreen(),
                ));
              },
              // ignore: sort_child_properties_last
              child: const Text("Rent a Bike"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).primaryColor,
                textStyle: const TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Profile'),
              onTap: () {
                // ignore: todo
                //TODO: Add functionality to navigate to the Profile Screen
              },
            ),
            ListTile(
              leading: const Icon(Icons.history),
              title: const Text('Record'),
              onTap: () {
                // ignore: todo
                //TODO: Add functionality to navigate to the Record Screen
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {
                // ignore: todo
                //TODO: Add functionality to navigate to the Settings Screen
              },
            ),
            ListTile(
              leading: const Icon(Icons.power_settings_new),
              title: const Text('Logout'),
              onTap: () {
                // ignore: todo
                //TODO: Add functionality to logout the user
              },
            ),
          ],
        ),
      ),
    );
  }
}
