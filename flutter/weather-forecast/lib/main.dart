import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        textTheme: GoogleFonts.interTextTheme(),
      ),
      home: const WeatherScreen(),
    );
  }
}

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF87CEEB),
              Color(0xFFB0D9E8),
              Color(0xFFE8F0F4),
            ],
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.fromLTRB(28, 60, 28, 32),
            child: Column(
              children: [
                const SizedBox(height: 80),
                const Text(
                  'Jakarta',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF1B3A4B),
                    letterSpacing: 0.3,
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  '27°',
                  style: TextStyle(
                    fontSize: 88,
                    fontWeight: FontWeight.w200,
                    color: Color(0xFF1B3A4B),
                    letterSpacing: -3,
                  ),
                ),
                const Text(
                  'Cerah berawan',
                  style: TextStyle(
                    fontSize: 15,
                    color: Color(0xFF1B3A4B),
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  'T: 31°  R: 24°',
                  style: TextStyle(
                    fontSize: 13,
                    color: const Color(0xFF1B3A4B).withOpacity(0.7),
                  ),
                ),
                const SizedBox(height: 40),
                // Hourly
                Container(
                  padding: const EdgeInsets.all(14),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.45),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'PER JAM',
                        style: TextStyle(
                          fontSize: 11,
                          color: const Color(0xFF1B3A4B).withOpacity(0.7),
                          letterSpacing: 0.5,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _Hourly(time: 'Sekarang', icon: '☀', value: '27°'),
                          _Hourly(time: '14.00', icon: '☀', value: '29°'),
                          _Hourly(time: '15.00', icon: '⛅', value: '30°'),
                          _Hourly(time: '16.00', icon: '⛅', value: '29°'),
                          _Hourly(time: '17.00', icon: '☁', value: '28°'),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                // Weekly
                Container(
                  padding: const EdgeInsets.all(14),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.45),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    children: const [
                      _ForecastRow(day: 'Hari ini', icon: '☀', lo: 24, hi: 31, fillStart: 0.20, fillWidth: 0.60),
                      _ForecastRow(day: 'Senin', icon: '⛅', lo: 24, hi: 30, fillStart: 0.25, fillWidth: 0.55),
                      _ForecastRow(day: 'Selasa', icon: '☁', lo: 23, hi: 28, fillStart: 0.30, fillWidth: 0.45),
                      _ForecastRow(day: 'Rabu', icon: '🌧', lo: 22, hi: 26, fillStart: 0.35, fillWidth: 0.35),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _Hourly extends StatelessWidget {
  final String time;
  final String icon;
  final String value;
  const _Hourly({required this.time, required this.icon, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          time,
          style: TextStyle(
            fontSize: 12,
            color: const Color(0xFF1B3A4B).withOpacity(0.7),
          ),
        ),
        const SizedBox(height: 6),
        Text(icon, style: const TextStyle(fontSize: 20)),
        const SizedBox(height: 4),
        Text(
          value,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            color: Color(0xFF1B3A4B),
          ),
        ),
      ],
    );
  }
}

class _ForecastRow extends StatelessWidget {
  final String day;
  final String icon;
  final int lo;
  final int hi;
  final double fillStart;
  final double fillWidth;

  const _ForecastRow({
    required this.day,
    required this.icon,
    required this.lo,
    required this.hi,
    required this.fillStart,
    required this.fillWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        children: [
          SizedBox(width: 60, child: Text(day, style: const TextStyle(fontSize: 13, color: Color(0xFF1B3A4B)))),
          SizedBox(width: 30, child: Text(icon, style: const TextStyle(fontSize: 14))),
          Expanded(
            child: Container(
              height: 4,
              margin: const EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                color: const Color(0xFF1B3A4B).withOpacity(0.15),
                borderRadius: BorderRadius.circular(2),
              ),
              child: FractionallySizedBox(
                alignment: Alignment.centerLeft,
                widthFactor: fillWidth,
                child: Container(
                  margin: EdgeInsets.only(left: fillStart * 100),
                  decoration: BoxDecoration(
                    color: const Color(0xFF1B3A4B),
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 30,
            child: Text(
              '${hi}°',
              textAlign: TextAlign.right,
              style: const TextStyle(fontSize: 13, color: Color(0xFF1B3A4B)),
            ),
          ),
        ],
      ),
    );
  }
}
