// ignore_for_file: library_private_types_in_public_api

import 'package:bicycle_rental_app/screens/payment_screen.dart';
import 'package:flutter/material.dart';

class RentalScreen extends StatefulWidget {
  const RentalScreen({Key? key}) : super(key: key);

  @override
  _RentalScreenState createState() => _RentalScreenState();
}

class _RentalScreenState extends State<RentalScreen> {
  int _bikeCount = 0;
  TimeOfDay _rentalTime = TimeOfDay.now();
  TimeOfDay _returnTime = TimeOfDay.now();

  void _incrementBikeCount() {
    setState(() {
      _bikeCount++;
    });
  }

  void _decrementBikeCount() {
    setState(() {
      if (_bikeCount > 0) {
        _bikeCount--;
      }
    });
  }

  void _showRentalTimePicker() async {
    final pickedTime = await showTimePicker(
      context: context,
      initialTime: _rentalTime,
    );

    if (pickedTime != null) {
      setState(() {
        _rentalTime = pickedTime;
      });
    }
  }

  void _showReturnTimePicker() async {
    final pickedTime = await showTimePicker(
      context: context,
      initialTime: _returnTime,
    );

    if (pickedTime != null) {
      setState(() {
        _returnTime = pickedTime;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rent a Bike'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 200,
            child: Image.network(
              'https://www.pngall.com/wp-content/uploads/12/Bike-PNG-File.png',
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 16.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: _decrementBikeCount,
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  backgroundColor: Colors.red,
                  padding: const EdgeInsets.all(16.0),
                ),
                child: const Icon(Icons.remove),
              ),
              const SizedBox(width: 16.0),
              Text(
                '$_bikeCount',
                style: Theme.of(context).textTheme.headline6,
              ),
              const SizedBox(width: 16.0),
              ElevatedButton(
                onPressed: _incrementBikeCount,
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  backgroundColor: Colors.green,
                  padding: const EdgeInsets.all(16.0),
                ),
                child: const Icon(Icons.add),
              ),
            ],
          ),
          const SizedBox(height: 16.0),
          ListTile(
            leading: const Icon(Icons.watch_later),
            title: Text('Rental Time: ${_rentalTime.format(context)}'),
            onTap: _showRentalTimePicker,
          ),
          ListTile(
            leading: const Icon(Icons.watch_later),
            title: Text('Return Time: ${_returnTime.format(context)}'),
            onTap: _showReturnTimePicker,
          ),
          const SizedBox(height: 16.0),
          Text('Hours to be rented: ${_rentalTime.format(context)} - ${_returnTime.format(context)}'),
          Text('Price: INSERT_PRICE_HERE'), // Reemplaza INSERT_PRICE_HERE con el precio correspondiente
          const Spacer(),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const PaymentScreen(),
              ));
            },
            child: const Text('Confirm Rental'),
            
          ),
        ],
      ),
    );
  }
}