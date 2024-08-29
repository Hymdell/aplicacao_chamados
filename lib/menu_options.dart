import 'package:aplicacao_chamados/on_hover_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuOptions extends StatelessWidget {
  const MenuOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return OnHoverButton(
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF717171),
            minimumSize: const Size(800, 400),
            shape: const RoundedRectangleBorder()
            ),
        child: Text(
          'TESTE',
          style: GoogleFonts.roboto(
              color: const Color.fromARGB(255, 255, 255, 255),
              fontSize: 24,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
