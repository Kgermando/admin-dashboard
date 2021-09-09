import 'package:flutter/material.dart';

class VentePage extends StatefulWidget {
  const VentePage({ Key? key }) : super(key: key);

  @override
  _VentePageState createState() => _VentePageState();
}

class _VentePageState extends State<VentePage> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Ventes'),
    );
  }
}