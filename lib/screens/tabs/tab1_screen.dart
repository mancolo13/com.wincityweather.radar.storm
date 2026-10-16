import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';
import '../../services/routing_service.dart';


class Tab1Screen extends StatelessWidget {
  const Tab1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Win • StormRadar'),
        actions: [
          IconButton(
            icon: const Icon(Icons.my_location, color: AppTheme.primaryColor),
            onPressed: () => RoutingService.openRegistrationUrl(),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Container(
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [AppTheme.primaryColor.withValues(alpha: 0.3), AppTheme.surfaceColor],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              borderRadius: BorderRadius.circular(24),
              border: Border.all(color: AppTheme.primaryColor.withValues(alpha: 0.3)),
            ),
            child: Column(
              children: [
                const Text('SAN FRANCISCO, CA', style: TextStyle(color: Colors.white70, fontSize: 12, letterSpacing: 1.5, fontWeight: FontWeight.bold)),
                const SizedBox(height: 12),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.cloud_queue, size: 54, color: AppTheme.secondaryColor),
                    SizedBox(width: 14),
                    Text('18°', style: TextStyle(fontSize: 64, fontWeight: FontWeight.w900)),
                  ],
                ),
                const SizedBox(height: 4),
                const Text('Scattered Showers • High 20° Low 14°', style: TextStyle(fontSize: 14, color: Colors.white)),
                const SizedBox(height: 16),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
                  decoration: BoxDecoration(color: Colors.white12, borderRadius: BorderRadius.circular(12)),
                  child: const Text('Wind: 22 km/h NW • Humidity: 76%', style: TextStyle(color: AppTheme.secondaryColor, fontSize: 12)),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          const Text('Hourly Forecast', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                _hourlyPill('Now', '18°', Icons.cloud_queue),
                _hourlyPill('14:00', '19°', Icons.wb_cloudy),
                _hourlyPill('15:00', '20°', Icons.wb_sunny),
                _hourlyPill('16:00', '19°', Icons.wb_sunny),
                _hourlyPill('17:00', '17°', Icons.cloud),
                _hourlyPill('18:00', '16°', Icons.grain),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              Expanded(child: _metricBox('UV Index', '3 Moderate', Icons.wb_sunny)),
              const SizedBox(width: 12),
              Expanded(child: _metricBox('Air Quality', '34 Good', Icons.air)),
            ],
          ),
        ],
      ),
    );
  }

  Widget _hourlyPill(String time, String temp, IconData icon) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
      decoration: BoxDecoration(color: AppTheme.surfaceColor, borderRadius: BorderRadius.circular(14)),
      child: Column(
        children: [
          Text(time, style: const TextStyle(fontSize: 12, color: Colors.white60)),
          const SizedBox(height: 8),
          Icon(icon, color: AppTheme.secondaryColor, size: 22),
          const SizedBox(height: 8),
          Text(temp, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
        ],
      ),
    );
  }

  Widget _metricBox(String label, String val, IconData icon) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(color: AppTheme.surfaceColor, borderRadius: BorderRadius.circular(16)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: AppTheme.secondaryColor, size: 24),
          const SizedBox(height: 8),
          Text(label, style: const TextStyle(color: Colors.white60, fontSize: 12), maxLines: 1, overflow: TextOverflow.ellipsis),
          Text(val, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}

