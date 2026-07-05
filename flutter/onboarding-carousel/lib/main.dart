import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Onboarding',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFF5F1E8),
        textTheme: GoogleFonts.interTextTheme(),
      ),
      home: const OnboardingScreen(),
    );
  }
}

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _ctrl = PageController();
  int _current = 0;

  static const _slides = [
    _Slide(
      illoBg: Color(0xFFC7D1B5),
      illoFg: Color(0xFF3D5A40),
      illoSymbol: '◐',
      title: 'Catat dengan tenang',
      body: 'Simpan ide, tugas, dan catatan dalam satu tempat yang bersih.',
    ),
    _Slide(
      illoBg: Color(0xFFE8C5A0),
      illoFg: Color(0xFF8B4513),
      illoSymbol: '◑',
      title: 'Atur tanpa ribet',
      body: 'Tag, folder, dan pencarian cepat untuk menemukan apa pun.',
    ),
    _Slide(
      illoBg: Color(0xFFB5C7D1),
      illoFg: Color(0xFF2C4A5E),
      illoSymbol: '◓',
      title: 'Sinkron di mana saja',
      body: 'Akses catatan dari semua perangkat, kapan saja, offline.',
    ),
  ];

  void _next() {
    if (_current < _slides.length - 1) {
      _ctrl.nextPage(
        duration: const Duration(milliseconds: 350),
        curve: Curves.easeOut,
      );
    } else {
      // finish onboarding
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Onboarding selesai (demo)')),
      );
    }
  }

  @override
  void dispose() {
    _ctrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            PageView.builder(
              controller: _ctrl,
              itemCount: _slides.length,
              onPageChanged: (i) => setState(() => _current = i),
              itemBuilder: (_, i) => _SlideView(_slides[i]),
            ),
            Positioned(
              top: 16,
              right: 16,
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  'Lewati',
                  style: TextStyle(color: Color(0xFF6B6B6B), fontSize: 13),
                ),
              ),
            ),
            Positioned(
              bottom: 110,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(_slides.length, (i) {
                  final active = i == _current;
                  return AnimatedContainer(
                    duration: const Duration(milliseconds: 250),
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                    width: active ? 24 : 8,
                    height: 8,
                    decoration: BoxDecoration(
                      color: active ? const Color(0xFF3D5A40) : const Color(0xFFD4CFC0),
                      borderRadius: BorderRadius.circular(4),
                    ),
                  );
                }),
              ),
            ),
            Positioned(
              bottom: 36,
              left: 36,
              right: 36,
              child: FilledButton(
                onPressed: _next,
                style: FilledButton.styleFrom(
                  backgroundColor: const Color(0xFF2C2C2C),
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  elevation: 0,
                ),
                child: Text(
                  _current == _slides.length - 1 ? 'Mulai' : 'Lanjut',
                  style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Slide {
  final Color illoBg;
  final Color illoFg;
  final String illoSymbol;
  final String title;
  final String body;
  const _Slide({
    required this.illoBg,
    required this.illoFg,
    required this.illoSymbol,
    required this.title,
    required this.body,
  });
}

class _SlideView extends StatelessWidget {
  final _Slide slide;
  const _SlideView(this.slide);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 80),
      child: Column(
        children: [
          const Spacer(),
          Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              color: slide.illoBg,
              shape: BoxShape.circle,
            ),
            alignment: Alignment.center,
            child: Text(
              slide.illoSymbol,
              style: TextStyle(
                fontSize: 80,
                color: slide.illoFg,
              ),
            ),
          ),
          const SizedBox(height: 40),
          Text(
            slide.title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.w700,
              color: Color(0xFF2C2C2C),
              letterSpacing: -0.5,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            slide.body,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 14,
              color: Color(0xFF6B6B6B),
              height: 1.5,
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
