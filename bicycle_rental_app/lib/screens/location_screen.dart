// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:bicycle_rental_app/screens/rental_screen.dart';

class LocationScreen extends StatelessWidget {
  final MapController mapController = MapController();
  final List<Marker> _locations = [
    Marker(
      width: 80.0,
      height: 80.0,
      point: LatLng(29.092119, -110.965045),
      builder: (ctx) => GestureDetector(
        onTap: () {
          Navigator.of(ctx).push(
            MaterialPageRoute(builder: (_) => const RentalScreen()),
          );
        },
        child: const Icon(Icons.location_on, color: Colors.red),
      ),
    ),
    Marker(
      width: 80.0,
      height: 80.0,
      point: LatLng(29.090369, -110.961685),
      builder: (ctx) => GestureDetector(
        onTap: () {
          Navigator.of(ctx).push(
            MaterialPageRoute(builder: (_) => const RentalScreen()),
          );
        },
        child: const Icon(Icons.location_on, color: Colors.red),
      ),
    ),
    Marker(
      width: 80.0,
      height: 80.0,
      point: LatLng(29.083798, -110.961780),
      builder: (ctx) => GestureDetector(
        onTap: () {
          Navigator.of(ctx).push(
            MaterialPageRoute(builder: (_) => const RentalScreen()),
          );
        },
        child: const Icon(Icons.location_on, color: Colors.red),
      ),
    ),
  ];

  LocationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Locations'),
      ),
      body: FlutterMap(
        mapController: mapController,
        options: MapOptions(
          center: LatLng(29.0851719, -110.9650429),
          zoom: 14.0,
        ),
        layers: [
          TileLayerOptions(
            urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
            subdomains: ['a', 'b', 'c'],
          ),
          MarkerLayerOptions(markers: _locations),
        ],
      ),
    );
  }
}
