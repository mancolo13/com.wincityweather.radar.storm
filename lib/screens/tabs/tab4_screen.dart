import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';


class Tab4Screen extends StatelessWidget {
  const Tab4Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Win • Saved Locations')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _cityTile('New York, NY', '14° Cloudy'),
          _cityTile('London, UK', '11° Drizzle'),
          _cityTile('Tokyo, Japan', '22° Clear'),
        ],
      ),
    );
  }

  Widget _cityTile(String city, String weather) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(color: AppTheme.surfaceColor, borderRadius: BorderRadius.circular(14)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(city, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
          Text(weather, style: const TextStyle(color: AppTheme.secondaryColor, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}

