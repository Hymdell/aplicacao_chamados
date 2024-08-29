import 'package:aplicacao_chamados/menu_options.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFF282828),
        appBar: AppBar(
          title: Text('Menu Inicial',
              style: GoogleFonts.roboto(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  fontSize: 24,
                  fontWeight: FontWeight.bold)),
          backgroundColor: const Color(0xFF717171),
        ),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MenuOptions(),
                  SizedBox(width: 20),
                  MenuOptions(),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MenuOptions(),
                  SizedBox(width: 20),
                  MenuOptions(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
