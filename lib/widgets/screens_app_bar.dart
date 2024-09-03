import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ScreensAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ScreensAppBar(this.text, this.switchScreen, {super.key});

  final String text;
  final void Function(String screen) switchScreen;

  @override
  Widget build(context) {
    return AppBar(
      leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              switchScreen('start-screen');
            },
          ),
      title: Text(text,
          style: GoogleFonts.roboto(
              color: const Color.fromARGB(255, 255, 255, 255),
              fontSize: 24,
              fontWeight: FontWeight.bold)),
      backgroundColor: const Color(0xFF717171),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
