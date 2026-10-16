import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';


class Tab2Screen extends StatelessWidget {
  const Tab2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    final days = [
      {'day': 'Monday', 'cond': 'Sunny', 'hi': '22°', 'lo': '14°', 'icon': Icons.wb_sunny},
      {'day': 'Tuesday', 'cond': 'Partly Cloudy', 'hi': '20°', 'lo': '13°', 'icon': Icons.wb_cloudy},
      {'day': 'Wednesday', 'cond': 'Thunderstorms', 'hi': '17°', 'lo': '11°', 'icon': Icons.flash_on},
      {'day': 'Thursday', 'cond': 'Rain Showers', 'hi': '16°', 'lo': '12°', 'icon': Icons.grain},
      {'day': 'Friday', 'cond': 'Clear Sky', 'hi': '21°', 'lo': '13°', 'icon': Icons.wb_sunny},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Win • 7-Day Forecast')),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: days.length,
        itemBuilder: (context, i) {
          final d = days[i];
          return Container(
            margin: const EdgeInsets.only(bottom: 10),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(color: AppTheme.surfaceColor, borderRadius: BorderRadius.circular(16)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(width: 90, child: Text(d['day'] as String, style: const TextStyle(fontWeight: FontWeight.bold))),
                Icon(d['icon'] as IconData, color: AppTheme.secondaryColor),
                Text(d['cond'] as String, style: const TextStyle(color: Colors.white70, fontSize: 12)),
                Text('${d['hi']} / ${d['lo']}', style: const TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
          );
        },
      ),
    );
  }
}

