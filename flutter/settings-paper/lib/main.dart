import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Settings',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFFAF7F0),
        textTheme: GoogleFonts.interTextTheme(),
      ),
      home: const SettingsScreen(),
    );
  }
}

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool _darkMode = false;
  bool _animations = true;
  bool _push = true;
  bool _emailDigest = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(0, 52, 0, 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Pengaturan',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                    letterSpacing: -0.5,
                    color: Color(0xFF1F1F1F),
                  ),
                ),
              ),
              _GroupLabel('Akun'),
              _Group(children: [
                _Row(icon: '◉', label: 'Profil', value: 'Shawawah', onTap: () {}),
                _Row(icon: '✉', label: 'Email', value: 'nama@email.com', onTap: () {}),
              ]),
              _GroupLabel('Tampilan'),
              _Group(children: [
                _ToggleRow(
                  icon: '◐',
                  label: 'Mode gelap',
                  value: _darkMode,
                  onChanged: (v) => setState(() => _darkMode = v),
                ),
                _ToggleRow(
                  icon: '✦',
                  label: 'Animasi',
                  value: _animations,
                  onChanged: (v) => setState(() => _animations = v),
                ),
                _Row(icon: 'A', label: 'Ukuran teks', value: 'Sedang', onTap: () {}),
              ]),
              _GroupLabel('Notifikasi'),
              _Group(children: [
                _ToggleRow(
                  icon: '◉',
                  label: 'Push',
                  value: _push,
                  onChanged: (v) => setState(() => _push = v),
                ),
                _ToggleRow(
                  icon: '✉',
                  label: 'Email digest',
                  value: _emailDigest,
                  onChanged: (v) => setState(() => _emailDigest = v),
                ),
              ]),
              _GroupLabel('Tentang'),
              _Group(children: [
                _Row(icon: 'i', label: 'Versi', value: '1.4.2', onTap: () {}),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}

class _GroupLabel extends StatelessWidget {
  final String text;
  const _GroupLabel(this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 16, 20, 6),
      child: Text(
        text.toUpperCase(),
        style: const TextStyle(
          fontSize: 11,
          fontWeight: FontWeight.w600,
          color: Color(0xFF8B7355),
          letterSpacing: 0.6,
        ),
      ),
    );
  }
}

class _Group extends StatelessWidget {
  final List<Widget> children;
  const _Group({required this.children});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFFEDE7D9)),
      ),
      child: Column(
        children: [
          for (int i = 0; i < children.length; i++) ...[
            children[i],
            if (i < children.length - 1)
              const Divider(height: 1, color: Color(0xFFF2EDDD), indent: 56),
          ],
        ],
      ),
    );
  }
}

class _Row extends StatelessWidget {
  final String icon;
  final String label;
  final String value;
  final VoidCallback onTap;

  const _Row({
    required this.icon,
    required this.label,
    required this.value,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
        child: Row(
          children: [
            Container(
              width: 28,
              height: 28,
              decoration: BoxDecoration(
                color: const Color(0xFFF5EFE0),
                borderRadius: BorderRadius.circular(6),
              ),
              alignment: Alignment.center,
              child: Text(
                icon,
                style: const TextStyle(
                  color: Color(0xFF8B7355),
                  fontSize: 14,
                ),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                label,
                style: const TextStyle(fontSize: 14, color: Color(0xFF1F1F1F)),
              ),
            ),
            Text(
              value,
              style: const TextStyle(color: Color(0xFF8B7355), fontSize: 13),
            ),
            const SizedBox(width: 8),
            const Text('›', style: TextStyle(color: Color(0xFFC7B98E), fontSize: 14)),
          ],
        ),
      ),
    );
  }
}

class _ToggleRow extends StatelessWidget {
  final String icon;
  final String label;
  final bool value;
  final ValueChanged<bool> onChanged;

  const _ToggleRow({
    required this.icon,
    required this.label,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
      child: Row(
        children: [
          Container(
            width: 28,
            height: 28,
            decoration: BoxDecoration(
              color: const Color(0xFFF5EFE0),
              borderRadius: BorderRadius.circular(6),
            ),
            alignment: Alignment.center,
            child: Text(
              icon,
              style: const TextStyle(color: Color(0xFF8B7355), fontSize: 14),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              label,
              style: const TextStyle(fontSize: 14, color: Color(0xFF1F1F1F)),
            ),
          ),
          GestureDetector(
            onTap: () => onChanged(!value),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              width: 38,
              height: 22,
              decoration: BoxDecoration(
                color: value ? const Color(0xFFD4A437) : const Color(0xFFE5DCC2),
                borderRadius: BorderRadius.circular(11),
              ),
              child: AnimatedAlign(
                duration: const Duration(milliseconds: 200),
                alignment: value ? Alignment.centerRight : Alignment.centerLeft,
                child: Container(
                  width: 18,
                  height: 18,
                  margin: const EdgeInsets.all(2),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
