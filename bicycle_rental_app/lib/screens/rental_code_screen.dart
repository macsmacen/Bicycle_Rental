import 'package:bicycle_rental_app/screens/home_screen.dart';
import 'package:flutter/material.dart';

class RentalCodeScreen extends StatelessWidget {
  const RentalCodeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String rentalCode = '12345';

    return Scaffold(
      appBar: AppBar(
        title: const Text('Rental Code'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Your Rental Code:',
            style: Theme.of(context).textTheme.headline5,
          ),
          const SizedBox(height: 16.0),
          Text(
            rentalCode,
            style: Theme.of(context).textTheme.headline2,
          ),
          const SizedBox(height: 32.0),
          Image.network(
            'https://www.pngall.com/wp-content/uploads/12/Bike-PNG-File.png',
            height: 200.0,
            width: 200.0,
            fit: BoxFit.contain,
          ),
          const SizedBox(height: 32.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  // TODO: Implement save rental code functionality.
                },
                child: const Text('Save Rental Code'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const HomeScreen(),
                  ));
                },
                child: const Text('Finish'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
