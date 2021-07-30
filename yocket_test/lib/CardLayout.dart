import 'package:flutter/material.dart';

class CardLayout extends StatelessWidget {
  final String hotelName;
  final String vicinity;
  final bool openNow;
  final String icon;
  final double rating;
  final int price_level;

  const CardLayout(
      {required this.hotelName,
        required this.vicinity,
        required this.openNow,
        required this.icon,
        required this.rating,
        required this.price_level});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(icon),
            ),
            title: Text(hotelName),
            subtitle: Text(vicinity),
            trailing: Text(
              rating.toString(),
            ),
          ),
        ],
      ),
    );
  }
}
